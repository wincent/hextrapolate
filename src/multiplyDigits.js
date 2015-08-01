/**
 * Copyright 2015-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

'use strict';

import addDigits from './addDigits';

/**
 * Multiplication is repeated addition.
 */
export default function multiplyDigits(
  multiplicand: Array<number>,
  multiplier: number,
  base: number
): Array<number> {
  let result = [0];
  let count = 0;

  while (multiplier) {
    if (count && count * 2 < multiplier) {
      multiplier -= count;
      count *= 2;
      result = addDigits(result, result, base);
    } else {
      result = addDigits(result, multiplicand, base);
      count++;
      multiplier--;
    }
  }

  return result;
}
