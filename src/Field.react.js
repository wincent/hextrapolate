/**
 * Copyright 2003-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

import DIGITS from './DIGITS';
import PropTypes from 'prop-types';
import React from 'react';
import convert from './convert';
import cx from 'classnames';

export type Value = {
  base: number;
  value: string;
};
export const ValuePropType = PropTypes.shape({
  base: PropTypes.number,
  value: PropTypes.string,
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

function getValidator(base) {
  const prefix = base === 16 ? '(?:0x)?' : '';
  const regexp = new RegExp(
    `^\\s*${prefix}[${DIGITS.slice(0, base)}]*\\s*$`,
    'i'
  );
  return value => regexp.test(value);
}

export default class Field extends React.Component {
  static propTypes = {
    base: PropTypes.number,
    onValueChange: PropTypes.func.isRequired,
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
    this._validate = getValidator(props.base);
    const value = fromValue(props.value, props.base);
    this.state = {
      copySucceeded: false,
      isActive: false,
      selectionEnd: value.length,
      selectionStart: value.length,
      value,
    };
  }

  componentDidUpdate(prevProps, prevState) {
    if (this._isActive) {
      const {selectionStart, selectionEnd} = this.state;
      this._input.setSelectionRange(selectionStart, selectionEnd);
    }
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.base !== this.props.base) {
      this._validate = getValidator(nextProps.base);
    }
    this.setState({value: fromValue(nextProps.value, nextProps.base)});
  }

  _onBlur = event => {
    this._isActive = false;
  }

  _onFocus = event => {
    this._isActive = true;
  }

  _onChange = event => {
    const value = event.currentTarget.value;
    if (this._validate(value)) {
      const {selectionEnd, selectionStart} = event.currentTarget;
      this.setState({selectionEnd, selectionStart});
      this.props.onValueChange({
        base: this.props.base,
        value,
      });
    } else {
      this.setState({
        selectionEnd: this._selectionEnd,
        selectionStart: this._selectionStart,
      });
    }
  }

  _onSelect = event => {
    // Remember selection to stop React moving cursor to end:
    // https://github.com/facebook/react/issues/955
    const {selectionEnd, selectionStart} = event.currentTarget;
    this._selectionStart = selectionStart;
    this._selectionEnd = selectionEnd;
  }

  _onCopy = () => {
    this._input.select();

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
    this._input.focus();
  }

  render() {
    return (
      <span className="hextrapolate-field">
        <input
          autoCapitalize="none"
          autoComplete="off"
          onBlur={this._onBlur}
          onFocus={this._onFocus}
          onChange={this._onChange}
          onSelect={this._onSelect}
          ref={ref => this._input = ref}
          spellCheck="false"
          type="text"
          value={this.state.value}
        />
        {this._copyStatus()}
        {this._copyLink()}
      </span>
    );
  }
}
