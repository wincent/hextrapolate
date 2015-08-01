/**
 * Copyright 2015-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

'use strict';

import React from 'react';

export default class Label extends React.Component {
  static propTypes = {
    text: React.PropTypes.string.required,
  };

  render() {
    return (
      <label className="hextrapolate-label">
        <span className="hextrapolate-label-text">
          {this.props.text}
        </span>
        {this.props.children}
      </label>
    );
  }
}
