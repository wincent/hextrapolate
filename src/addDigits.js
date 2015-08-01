/**
 * Copyright 2015-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

'use strict';

export default function addDigits(
  aDigits: Array<number>,
  bDigits: Array<number>,
  base: number
): Array<number> {
  let result = [];
  let carry = 0;
  for (
    let i = 0, max = Math.max(aDigits.length, bDigits.length);
    i < max || carry;
    i++
  ) {
    const aDigit = aDigits[i] || 0;
    const bDigit = bDigits[i] || 0;
    const sum = aDigit + bDigit + carry;
    result.push(sum % base);
    carry = Math.floor(sum / base);
  }
  return result.length ? result : [0];
}
