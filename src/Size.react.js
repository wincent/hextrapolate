/**
 * Copyright 2003-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

import React from 'react';
import convert from './convert';

export default function Size({value}) {
  let roundup = 1;
  let targetBase = 2;
  if (value.base === 16) {
    roundup = 4;
    targetBase = 16;
  }
  const bits = value ?
    convert(value.value, value.base, targetBase).length * roundup :
    0;
  const bytes = Math.ceil(bits / 8);
  return (
    <span>
      {bytes} byte{bytes === 1 ? '' : 's'},
      {' '}
      {bits} bits
    </span>
  );
}
