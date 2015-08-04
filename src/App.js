/**
 * Copyright 2003-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

'use strict';

import DIGITS from './DIGITS';
import DynamicField from './DynamicField.react';
import Field from './Field.react';
import Label from './Label.react';
import React from 'react';
import Size from './Size.react';
import type Value from './Field.react';
import convert from './convert';
import debounce from './debounce';

import './App.css';

const SERIALIZATION_BASE = DIGITS.length;

const replaceHistoryState = debounce(
  value => window.history.replaceState(
    {},
    '',
    '#' + convert(value.value, value.base, SERIALIZATION_BASE)
  ),
  500
);

function getInitialValue() {
  // Extract value from URL fragment, if present.
  const value = window.location.hash.replace(/^#/, '');
  const validator = new RegExp(`^[${DIGITS}]+$`);
  if (!validator.test(value)) {
    return null;
  } else {
    return {
      base: SERIALIZATION_BASE,
      value,
    };
  }
}

export default class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      value: getInitialValue(),
    };
  }

  _onValueChange = (value: Value) => {
    this.setState({value});
    replaceHistoryState(value);
  }

  componentDidMount() {
    this._firstInput.focus();
  }

  render() {
    const {value} = this.state;

    return (
      <div className="hextrapolate">
        <h1>
          Hextrapolate &mdash; <Size value={value} />
        </h1>
        <Label text="Hexadecimal">
          <Field
            base={16}
            onValueChange={this._onValueChange}
            ref={ref => this._firstInput = ref}
            value={value}
          />
        </Label>
        <Label text="Decimal">
          <Field
            onValueChange={this._onValueChange}
            value={value}
          />
        </Label>
        <Label text="Octal">
          <Field
            base={8}
            onValueChange={this._onValueChange}
            value={value}
          />
        </Label>
        <Label text="Binary">
          <Field
            base={2}
            onValueChange={this._onValueChange}
            value={value}
          />
        </Label>
        <DynamicField
          initialBase={32}
          value={value}
          onValueChange={this._onValueChange}
        />
        <DynamicField
          initialBase={36}
          value={value}
          onValueChange={this._onValueChange}
        />
        <footer className="hextrapolate-footer">
          <a href="mailto:greg@hurrell.net">Contact</a>
          {' | '}
          <a href="https://github.com/wincent/hextrapolate">Source</a>
        </footer>
      </div>
    );
  }
}
