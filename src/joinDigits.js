/**
 * Copyright 2015-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

'use strict';

/**
 * Turns an unpacked arbitrary-precision representation of a number, `digits`,
 * (as produced by `getDigits`) back into a string representation in `base`.
 */
export default function joinDigits(
  digits: Array<number>,
  base: number
): string {
  return digits
    .slice()
    .reverse()
    .map(number => number.toString(base))
    .join('');
}
