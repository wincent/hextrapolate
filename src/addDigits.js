/**
 * Copyright 2003-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

/**
 * Adds two arrays of decimal digits, `aDigits` and `bDigits`, returning a new
 * array of decimal digits in base `base`.
 */
export default function addDigits(
  aDigits: Array<number>,
  bDigits: Array<number>,
  base: number
): Array<number> {
  let result = [];
  let carry = 0;
  let aLength = aDigits.length;
  let bLength = bDigits.length;
  for (
    let i = 0, max = Math.max(aLength, bLength);
    carry || i < max;
    i++
  ) {
    const aDigit = i < aLength ? aDigits[i] : 0;
    const bDigit = i < bLength ? bDigits[i] : 0;
    const sum = aDigit + bDigit + carry;
    result.push(sum % base);

    // ~~ here is the equivalent of Math.floor; used to avoid V8 de-opt,
    // "Reference to a variable which requires dynamic lookup".
    carry = ~~(sum / base);
  }
  return result.length ? result : [0];
}
