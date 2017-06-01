/**
 * Copyright 2003-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

import DIGITS from './DIGITS';

const DIGITS_MAP = {};
DIGITS.split('').forEach((digit, i) => {
  DIGITS_MAP[digit] = i;
});

/**
 * Strips the leading prefix from `number` in `base` and returns the remaining
 * part of the string.
 *
 * - "0x" (or "0X") for hexadecimal numbers.
 * - "0" for octal numbers.
 *
 * For all bases, leading whitespace is stripped.
 */
function stripPrefix(number: string, base: number): string {
  if (base === 16) {
    return number.replace(/^\s*0x/i, '');
  } else if (base === 8) {
    return number.replace(/^\s*0/, '');
  } else {
    return number.replace(/^\s*/, '');
  }
}

function parse(digit: string, base: number) {
  if (base > 36 && base <= 62) {
    // This branch only called for serialization to/from the URL.
    const position = DIGITS_MAP[digit];
    return position !== -1 && position < base ? position + 1 : NaN;
  } else {
    return parseInt(digit, base);
  }
}

/**
 * Breaks the string repsentation of `number` in `base` into an array of decimal
 * digits (from most significant to least significant) for easier manipulation.
 *
 * For example, the hexadecimal representation `"40fa"` becomes
 * `[4, 0, 15, 10]`.
 */
export default function getDigits(number: string, base: number): Array<number> {
  return stripPrefix(number, base).trim().split('').map(digit => {
    const result = parse(digit, base);
    if (isNaN(result)) {
      throw new Error('Invalid digit `' + digit + '` for base `' + base + '`');
    }
    return result;
  });
}
