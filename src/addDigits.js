/**
 * Copyright 2003-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

export default function addDigits(
  aDigits: Array<number>,
  bDigits: Array<number>,
  base: number
): Array<number> {
  let result = [];
  let carry = 0;
  for (let i = 0; i < aDigits.length || i < bDigits.length || carry; i++) {
    const aDigit = i < aDigits.length ? aDigits[i] : 0;
    const bDigit = i < bDigits.length ? bDigits[i] : 0;
    const sum = aDigit + bDigit + carry;
    result.push(sum % base);

    // ~~ here is the equivalent of Math.floor; used to avoid V8 de-opt,
    // "Reference to a variable which requires dynamic lookup".
    carry = ~~(sum / base);
  }
  return result.length ? result : [0];
}
