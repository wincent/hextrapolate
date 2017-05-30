/**
 * Copyright 2003-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

import React from 'react';
import {ValuePropType} from './Field.react';
import convert from './convert';

export default class App extends React.Component {
  static propTypes = {
    value: ValuePropType,
  };

  render() {
    const {value} = this.props;
    const bits = value ? convert(value.value, value.base, 16).length * 8 : 0;
    const bytes = bits / 8;
    return (
      <span>
        {bytes} byte{bytes === 1 ? '' : 's'},
        {' '}
        {bits} bits
      </span>
    );
  }
}
