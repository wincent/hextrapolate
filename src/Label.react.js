/**
 * Copyright 2003-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

import React from 'react';

export default class Label extends React.Component {
  static propTypes = {
    text: React.PropTypes.string.required,
  };

  render() {
    return (
      <label className="hextrapolate-row">
        <span className="hextrapolate-base">
          {this.props.text}
        </span>
        {this.props.children}
      </label>
    );
  }
}
