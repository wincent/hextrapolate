/**
 * Copyright 2003-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 */

'use strict';

import multiplyDigits from '../multiplyDigits';

describe('multiplyDigits()', () => {
  it('multiplies by 0', () => {
    expect(multiplyDigits([1], 0, 2)).toEqual([0]);
    expect(multiplyDigits([5], 0, 8)).toEqual([0]);
    expect(multiplyDigits([4], 0, 10)).toEqual([0]);
    expect(multiplyDigits([12], 0, 16)).toEqual([0]);
  });

  it('multiplies by 1', () => {
    expect(multiplyDigits([1], 1, 2)).toEqual([1]);
    expect(multiplyDigits([5], 1, 8)).toEqual([5]);
    expect(multiplyDigits([4], 1, 10)).toEqual([4]);
    expect(multiplyDigits([12], 1, 16)).toEqual([12]);
  });

  it('multiplies by 2', () => {
    expect(multiplyDigits([1], 2, 2)).toEqual([0, 1]);
    expect(multiplyDigits([5], 2, 8)).toEqual([2, 1]);
    expect(multiplyDigits([4], 2, 10)).toEqual([8]);
    expect(multiplyDigits([12], 2, 16)).toEqual([8, 1]);
  });

  it('multiplies by 100', () => {
    expect(multiplyDigits([1], 100, 2)).toEqual([0, 0, 1, 0, 0, 1, 1]);
    expect(multiplyDigits([5], 100, 8)).toEqual([4, 6, 7]);
    expect(multiplyDigits([4], 100, 10)).toEqual([0, 0, 4]);
    expect(multiplyDigits([12], 100, 16)).toEqual([0, 11, 4]);
  });

  it('multiplies by 1000', () => {
    expect(multiplyDigits([1], 1000, 2)).toEqual([0, 0, 0, 1, 0, 1, 1, 1, 1, 1]);
    expect(multiplyDigits([5], 1000, 8)).toEqual([0, 1, 6, 1, 1]);
    expect(multiplyDigits([4], 1000, 10)).toEqual([0, 0, 0, 4]);
    expect(multiplyDigits([12], 1000, 16)).toEqual([0, 14, 14, 2]);
  });
});
