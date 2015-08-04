/**
 * Copyright 2003-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 */

'use strict';

import add from '../add';

describe('add()', () => {
  it('adds empty numbers to 0', () => {
    expect(add('', '', 2)).toBe('0');
    expect(add('', '', 8)).toBe('0');
    expect(add('', '', 10)).toBe('0');
    expect(add('', '', 16)).toBe('0');

    // Whitespace is considered "empty" as well.
    expect(add(' ', ' ', 2)).toBe('0');
    expect(add(' ', ' ', 8)).toBe('0');
    expect(add(' ', ' ', 10)).toBe('0');
    expect(add(' ', ' ', 16)).toBe('0');
  });

  it('adds an empty number to a non-empty number', () => {
    expect(add('', '101', 2)).toBe('101');
    expect(add('', '755', 8)).toBe('755');
    expect(add('', '321', 10)).toBe('321');
    expect(add('', 'ff4', 16)).toBe('ff4');
  });

  it('adds a non-empty number to an empty number', () => {
    expect(add('101', '', 2)).toBe('101');
    expect(add('755', '', 8)).toBe('755');
    expect(add('321', '', 10)).toBe('321');
    expect(add('ff4', '', 16)).toBe('ff4');
  });

  it('adds binary numbers with overflow', () => {
    // Equal number of digits.
    expect(add('101', '110', 2)).toBe('1011');

    // More digits in first operand.
    expect(add('1001', '101', 2)).toBe('1110');

    // More digits in second operand.
    expect(add('11', '1011', 2)).toBe('1110');
  });

  it('adds decimal numbers with overflow', () => {
    // Equal number of digits.
    expect(add('481', '110', 10)).toBe('591');

    // More digits in first operand.
    expect(add('1024', '85', 10)).toBe('1109');

    // More digits in second operand.
    expect(add('12', '4999', 10)).toBe('5011');
  });

  it('adds hexadecimal numbers with overflow', () => {
    // Equal number of digits.
    expect(add('200', 'f39', 16)).toBe('1139');

    // More digits in first operand.
    expect(add('102a', '805', 16)).toBe('182f');

    // More digits in second operand.
    expect(add('a2', '4f02', 16)).toBe('4fa4');
  });

  it('adds hexadecimal numbers case-insensitively', () => {
    expect(add('feed', 'FACE', 16)).toBe('1f9bb');
  });

  it('ignores leading and trailing whitespace', () => {
    expect(add('   429  ', ' 120   ', 10)).toBe('549');
  });

  it('ignores an optional 0 prefix for octal numbers', () => {
    expect(add('0755', '002', 8)).toBe('757');
  });

  it('ignores an optional 0x prefix for hexadecimal numbers', () => {
    expect(add('0x100', 'ff', 16)).toBe('1ff');
    expect(add('feff', '0Xff', 16)).toBe('fffe');
  });

  it('adds arbitrary precision numbers', () => {
    expect(add(
      'dff026dc84b91cb70e984582a9ce6515e2100d55',
      'cf4fee757d570bd5f3d390004312c40867a512d1',
      16
    )).toBe('1af4015520210288d026bd582ece1291e49b52026');

  });

  it('complains if given a digit that is out-of-range for the base', () => {
    expect(() => add('10', '20', 2))
      .toThrow('Invalid digit `2` for base `2`');
    expect(() => add('558', '444', 8))
      .toThrow('Invalid digit `8` for base `8`');
    expect(() => add('404', '3*', 8))
      .toThrow('Invalid digit `*` for base `10`');
    expect(() => add('feedface', 'groundbeef', 16))
      .toThrow('Invalid digit `g` for base `16`');
  });
});
