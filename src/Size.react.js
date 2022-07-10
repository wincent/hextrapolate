/**
 * Copyright 2003-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

import React from 'react';
import {ValuePropType} from './Field.react';
import convert from './convert';

export default class Size extends React.Component {
  static propTypes = {
    value: ValuePropType,
  };

  render() {
    const {value} = this.props;
    const bits = value ? convert(value.value, value.base, 2).length : 0;
    const bytes = Math.ceil(bits / 8);
    return (
      <span>
        {bytes} byte{bytes === 1 ? '' : 's'},
        {' '}
        {bits} bits
      </span>
    );
  }
}
