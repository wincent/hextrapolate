/**
 * Copyright 2015-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

'use strict';

import React from 'react';
import convert from './convert';

export type Value = {
  base: number;
  value: string;
};
export const ValuePropType = React.PropTypes.shape({
  base: React.PropTypes.number,
  value: React.PropTypes.string,
});

const DIGITS = '0123456789abcdef';

/**
 * Convert from `value` to `base`.
 */
function fromValue(value: ?Value, base: number): string {
  if (value === null) {
    return '';
  } else if (value.base === base) {
    return value.value;
  }
  return convert(value.value, value.base, base);
}

export default class Field extends React.Component {
  static propTypes = {
    base: React.PropTypes.number,
    onValueChange: React.PropTypes.func.required,
    value: ValuePropType,
  };
  static defaultProps = {
    base: 10,
  };

  constructor(props) {
    super(props);
    if (props.base < 2 || props.base > DIGITS.length) {
      throw new Error(
        `base prop must be between 2..${DIGITS.length}`
      );
    }
  }

  _isValid(value: string): boolean {
    const validator = new RegExp(
      `^[${DIGITS.slice(0, this.props.base)}]*$`
    );
    return validator.test(value.trim().toLowerCase());
  }

  _onChange = event => {
    const value = event.currentTarget.value;
    if (this._isValid(value)) {
      this.props.onValueChange({
        base: this.props.base,
        value,
      });
    }
  }

  render() {
    return (
      <input
        className="hextrapolate-input"
        onChange={this._onChange}
        type="text"
        value={fromValue(this.props.value, this.props.base)}
      />
    );
  }
}
