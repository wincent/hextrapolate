/**
 * Copyright 2003-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 */

'use strict';

import convert from './convert';

describe('convert()', () => {
  describe('converting from binary', () => {
    it('treats binary-to-binary as a no-op', () => {
      expect(convert('1011001', 2, 2)).toBe('1011001');
    });

    it('converts binary to decimal', () => {
    });

    it('converts binary to octal', () => {
    });

    it('converts binary to hexadecimal', () => {
    });

    it('converts with arbitrary precision', () => {
    });
  });

  describe('converting from decimal', () => {
    it('treats decimal-to-decimal as a no-op', () => {
      expect(convert('324234124', 10, 10)).toBe('324234124');
    });

    it('converts decimal to binary', () => {
    });

    it('converts decimal to octal', () => {
    });

    it('converts decimal to hexadecimal', () => {
      expect(convert('255', 10, 16)).toBe('ff');
      expect(convert('4277009102', 10, 16)).toBe('feedface');
    });

    it('converts with arbitrary precision', () => {
    });
  });

  describe('converting from octal', () => {
    it('treats octal-to-octal as a no-op', () => {
      expect(convert('723147234234', 8, 8)).toBe('723147234234');
    });

    it('converts octal to binary', () => {
    });

    it('converts octal to decimal', () => {
    });

    it('converts octal to hexadecimal', () => {
    });

    it('converts with arbitrary precision', () => {
    });
  });

  describe('converting form hexadecimal', () => {
    it('treats hexadecimal-to-hexadecimal as a no-op', () => {
      expect(convert('deadbeef', 16, 16)).toBe('deadbeef');
    });

    it('converts hexadecimal to binary', () => {
    });

    it('converts hexadecimal to decimal', () => {
      expect(convert('ff', 16, 10)).toBe('255');
      expect(convert('feedface', 16, 10)).toBe('4277009102');
    });

    it('converts hexadecimal to octal', () => {
    });

    it('converts with arbitrary precision', () => {
      expect(convert('ab92b650b5f18fb53ee9f6229fd82638d069d9af', 16, 10))
        .toBe('979509212510335489186816896981475731336057182639');
      expect(convert('ab92b650b5f18fb53ee9f6229fd82638d069d9af', 16, 8))
        .toBe('125622554502657430766517564766105177301143432032354657');
      expect(convert('ab92b650b5f18fb53ee9f6229fd82638d069d9af', 16, 2))
        .toBe('1010101110010010101101100101000010110101111100011000111110110101001111101110100111110110001000101001111111011000001001100011100011010000011010011101100110101111');
    });
  });
});
