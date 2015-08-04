/**
 * Copyright 2003-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

'use strict';

import DIGITS from './DIGITS';
import React from 'react';
import convert from './convert';
import cx from 'classnames';

export type Value = {
  base: number;
  value: string;
};
export const ValuePropType = React.PropTypes.shape({
  base: React.PropTypes.number,
  value: React.PropTypes.string,
});

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
    this.state = {copySucceeded: false};
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

  _onCopy = () => {
    React.findDOMNode(this._input).select();

    // May throw a SecurityError.
    try {
      this.setState({
        copySucceeded: document.execCommand('copy'),
      });
      setTimeout(() => this.setState({copySucceeded: false}), 750);
    } catch(error) {
      this.setState({copySucceeded: false});
    }
  }

  _copyLink() {
    // Would check `document.queryCommandSupported('copy')` here, but that
    // doesn't work; see:
    // - https://code.google.com/p/chromium/issues/detail?id=476508
    // - https://github.com/w3c/clipboard-apis/issues/4
    return (
      <span
        className="hextrapolate-copy"
        onClick={this._onCopy}
        title="Copy to Clipboard">
        copy
      </span>
    );
  }

  _copyStatus() {
    const classNames = cx({
      'hextrapolate-copy-status': true,
      'hextrapolate-copy-success': this.state.copySucceeded,
    });
    return <span className={classNames}>&#x2713;</span>;
  }

  focus() {
    React.findDOMNode(this._input).focus();
  }

  render() {
    return (
      <span className="hextrapolate-field">
        <input
          onChange={this._onChange}
          ref={ref => this._input = ref}
          type="text"
          value={fromValue(this.props.value, this.props.base)}
        />
        {this._copyStatus()}
        {this._copyLink()}
      </span>
    );
  }
}
