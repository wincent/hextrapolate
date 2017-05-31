/**
 * Copyright 2003-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

import DIGITS from './DIGITS';

function encode(number: string, base: number) {
  if (base > 36 && base <= 62) {
    // This branch really only ever called for serializing to the URL.
    return DIGITS[number - 1];
  } else {
    return number.toString(base);
  }
}

/**
 * Turns an unpacked arbitrary-precision representation of a number, `digits`,
 * (as produced by `getDigits`) back into a string representation in `base`.
 */
export default function joinDigits(
  digits: Array<number>,
  base: number
): string {
  return digits
    .map(number => encode(number, base))
    .reverse()
    .join('');
}
