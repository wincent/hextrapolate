/**
 * Copyright 2015-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

'use strict';

import React from 'react';
import {
  default as Field,
  ValuePropType,
} from './Field.react';

export default class DynamicField extends React.Component {
  static propTypes = {
    initialBase: React.PropTypes.number,
    onValueChange: React.PropTypes.func.required,
    value: ValuePropType,
  };

  constructor(props) {
    super(props);
    this.state = {base: props.initialBase};
  }

  _onChange = event => {
    const base = parseInt(event.target.value, 10);
    this.setState({base});
  }

  _renderOptions() {
    const options = [];
    for (let i = 2; i <= 36; i++) {
      options.push(
        <option key={i} value={i}>Base {i}</option>
      );
    }
    return options;
  }

  render() {
    return (
      <label className="hextrapolate-label">
        <select
          className="hextrapolate-label-text"
          onChange={this._onChange}
          value={this.state.base}>
          {this._renderOptions()}
        </select>
        <Field
          base={this.state.base}
          onValueChange={this.props.onValueChange}
          value={this.props.value}
        />
      </label>
    );
  }
}
