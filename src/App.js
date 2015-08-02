/**
 * Copyright 2015-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

'use strict';

import DynamicField from './DynamicField.react';
import React from 'react';
import type Value from './Field.react';
import Field from './Field.react';
import Label from './Label.react';
import convert from './convert';

import './App.css';

export default class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      value: null,
    };
  }

  _onValueChange = (value: Value) => {
    this.setState({value});
  }

  render() {
    const {value} = this.state;
    const bits = value ? convert(
      value.value,
      value.base,
      16
    ).length * 8 : 0;

    return (
      <div className="hextrapolate">
        <h1>
          Hextrapolate
          &mdash;
          {' '}
          {bits / 8 } byte{bits / 8 === 1 ? '' : 's'},
          {' '}
          {bits} bits
        </h1>
        <Label text="Hexadecimal">
          <Field
            base={16}
            onValueChange={this._onValueChange}
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
      </div>
    );
  }
}
