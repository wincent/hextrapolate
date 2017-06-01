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
  const aLength = aDigits.length;
  const bLength = bDigits.length;
  for (let i = 0; i < aLength || i < bLength || carry; i++) {
    const aDigit = i < aLength ? aDigits[aLength - i - 1] : 0;
    const bDigit = i < bLength ? bDigits[bLength - i - 1] : 0;
    const sum = aDigit + bDigit + carry;
    result.push(sum % base);

    // ~~ here is the equivalent of Math.floor; used to avoid V8 de-opt,
    // "Reference to a variable which requires dynamic lookup".
    carry = ~~(sum / base);
  }
  return result.length ? result.reverse() : [0];
}
