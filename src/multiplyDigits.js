/**
 * Copyright 2003-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

import addDigits from './addDigits';

/**
 * Multiply an array of decimal digits, `multiplicand`, by `number`, returning
 * the result as an array of decimal digits in base `base`.
 *
 * Note that multiplication is implemented as repeated addition.
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

  // We memoize partial subresults in a faux-stack so they can be re-used.
  // (Faux because we never actually pop, as an optimization.)
  const memo = [];
  let memoIndex = -1;

  while (multiplier) {
    if (count && count * 2 <= multiplier) {
      // We can double the current result without exceeding the target.
      result = addDigits(result, result, base);
      multiplier -= count;
      count *= 2;
      memo.push({count, result});
      memoIndex++;
    } else if (memoIndex >= 0) {
      // We can use a previous result from the stack to leap ahead.
      while (memoIndex >= 0) {
        const previous = memo[memoIndex--];
        if (previous.count <= multiplier) {
          result = addDigits(result, previous.result, base);
          multiplier -= previous.count;
          count += previous.count;
          break;
        }
      }
    } else {
      // Stack is empty, so fall back to base case (single addition).
      result = addDigits(result, multiplicand, base);
      multiplier--;
      count++;
      memo.push({count, result});
      memoIndex++;
    }
  }

  return result;
}
