/**
 * Copyright 2015-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

'use strict';

import React from 'react';
import Field from './Field.react';

export default class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      value: null,
    };
  }

  _onValueChange = (value: string) => {
    this.setState({value});
  }

  render() {
    return (
      <div>
        <h1>Hextrapolate</h1>
        <label>
          Hexadecimal
          <Field
            base={16}
            onValueChange={this._onValueChange}
            value={this.state.value}
          />
        </label>
        <label>
          Decimal
          <Field
            onValueChange={this._onValueChange}
            value={this.state.value}
          />
        </label>
        <label>
          Octal
          <Field
            base={8}
            onValueChange={this._onValueChange}
            value={this.state.value}
          />
        </label>
        <label>
          Binary
          <Field
            base={2}
            onValueChange={this._onValueChange}
            value={this.state.value}
          />
        </label>
      </div>
    );
  }
}
