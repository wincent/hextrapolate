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

  _onCopy = event => {
    const input = React.findDOMNode(this._input);
    input.select();

    try {
      // May throw a SecurityError.
      document.execCommand('copy');
    } catch(error) {
      // Swallow.
    }
  }

  _copyLink = () => {
    // Would check `document.queryCommandSupported('copy')` here, but that
    // doesn't work; see:
    // - https://code.google.com/p/chromium/issues/detail?id=476508
    // - https://github.com/w3c/clipboard-apis/issues/4
    return <span onClick={this._onCopy}>copy</span>;
  }

  render() {
    return (
      <span>
        <input
          className="hextrapolate-input"
          onChange={this._onChange}
          ref={ref => this._input = ref}
          type="text"
          value={fromValue(this.props.value, this.props.base)}
        />
        {this._copyLink()}
      </span>
    );
  }
}
