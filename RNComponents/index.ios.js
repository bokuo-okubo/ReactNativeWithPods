/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
'use strict';

const React = require('react-native');
const Web = require('./jsx/components/Web')

let {
  AppRegistry
} = React;

let ReactNativeWithPods = React.createClass({
  render: function() {
    return (
      <Web/>
    );
  }
});

AppRegistry.registerComponent('ReactNativeWithPods', () => ReactNativeWithPods);
