/**
 * Copyright 2015-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

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

/**
 * Breaks the string repsentation of `number` in `base` into an array of decimal
 * digits (from least significant to most significant) for easier manipulation.
 *
 * For example, the hexadecimal representation `"40fa"` becomes `[10, 15, 0,
 * 4]`.
 */
function getDigits(number: string, base: number): Array<number> {
  return stripPrefix(number, base).trim().split('').reverse().map(digit => {
    const result = parseInt(digit, base);
    if (isNaN(result)) {
      throw new Error('Invalid digit `' + digit + '` for base `' + base + '`');
    }
    return result;
  });
}

/**
 * Adds two numbers `a` and `b`, both in `base` and returns the answer as a
 * string representation in `base`.
 */
export default function add(a: string, b: string, base: number): string {
  const aDigits = getDigits(a, base);
  const bDigits = getDigits(b, base);
  let result = '';
  let carry = 0;
  for (
    let i = 0, max = Math.max(aDigits.length, bDigits.length);
    i < max || carry;
    i++
  ) {
    const aDigit = aDigits[i] || 0;
    const bDigit = bDigits[i] || 0;
    const sum = aDigit + bDigit + carry;
    result = (sum % base).toString(base) + result;
    carry = Math.floor(sum / base);
  }
  return result ? result : '0';
}
