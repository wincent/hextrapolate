/**
 * Copyright 2015-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

'use strict';

import addDigits from './addDigits';
import getDigits from './getDigits';

/**
 * Adds two numbers `a` and `b`, both in `base` and returns the answer as a
 * string representation in `base`.
 */
export default function add(a: string, b: string, base: number): string {
  const aDigits = getDigits(a, base);
  const bDigits = getDigits(b, base);
  return addDigits(aDigits, bDigits, base)
    .reverse()
    .map(number => number.toString(base))
    .join('');
}
