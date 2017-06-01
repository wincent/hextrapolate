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
 * Convert `number` in base `inBase`, to base `outBase`.
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
  let result = [0];
  let power = [1];
  for (let i = digits.length - 1; i >= 0; i--) {
    if (digits[i]) {
      result = addDigits(
        result,
        multiplyDigits(power, digits[i], outBase),
        outBase
      );
    }
    power = multiplyDigits(power, inBase, outBase);
  }
  return joinDigits(result, outBase);
}
