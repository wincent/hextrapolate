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
  // Partial result being built up.
  let result = [0];

  // Running total of additions performed so far.
  let count = 0;

  // We memoize partial subresults in a stack so they can be re-used.
  const memo = [];

  while (multiplier) {
    if (count && count * 2 < multiplier) {
      // We can double the current result without exceeding the target.
      result = addDigits(result, result, base);
      multiplier -= count;
      count *= 2;
      memo.push({count, result});
    } else {
      const last = memo.pop();
      if (last && last.count < multiplier) {
        // We can use a previous result on the stack to leap ahead.
        result = addDigits(result, last.result, base);
        multiplier -= last.count;
        count += last.count;
      } else if (!memo.length) {
        // Stack is empty, so fall back to base case (single addition).
        result = addDigits(result, multiplicand, base);
        multiplier--;
        count++;
        memo.push({count, result});
      }
    }
  }

  return result;
}
