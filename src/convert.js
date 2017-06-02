/**
 * Copyright 2003-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

import addDigits from './addDigits';
import getDigits from './getDigits';
import joinDigits from './joinDigits';
import multiplyDigits from './multiplyDigits';

/**
 * Memoization for reusable part of computation. The `power` value in
 * the core loop of `convert()` varies only by `inBase`/`outBase`,
 * independently of the `number` to be converted, so we keep it around
 * and re-use it to avoid repeated calls to `multiplyDigits()`.
 */
const memo = [];

function getPowers(inBase: number, outBase: number): Array<Array<number>> {
  let outer = memo[inBase];
  if (!outer) {
    outer = memo[inBase] = [];
  }
  let nested = outer[outBase];
  if (!nested) {
    nested = outer[outBase] = [[1]];
  }
  return nested;
}

/**
 * Convert `number` in base `inBase`, to base `outBase`. Both the input `number`
 * and return value are string representations.
 */
export default function convert(
  number: string,
  inBase: number,
  outBase: number
): string {
  if (inBase === outBase) {
    return number;
  }
  const digits = getDigits(number, inBase);
  const powers = getPowers(inBase, outBase);
  let result = [0];
  for (let i = 0; i < digits.length; i++) {
    const power = powers[i];
    if (digits[i]) {
      result = addDigits(
        result,
        multiplyDigits(power, digits[i], outBase),
        outBase
      );
    }

    if (powers.length < i + 2) {
      powers[i + 1] = multiplyDigits(power, inBase, outBase);
    }
  }
  return joinDigits(result, outBase);
}
