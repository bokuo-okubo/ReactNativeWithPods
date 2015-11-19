const React = require('react-native');


let {
  StyleSheet,
  Text,
  TextInput,
  TouchableOpacity,
  View,
  WebView
} = React;

// const styles = StyleSheet.create({
//   container: {
//     flex: 1,
//     backgroundColor: HEADER,
//   },
//   addressBarRow: {
//     flexDirection: 'row',
//     padding: 8,
//   },
//   webView: {
//     backgroundColor: BGWASH,
//     height: 350,
//   },
//   addressBarTextInput: {
//     backgroundColor: BGWASH,
//     borderColor: 'transparent',
//     borderRadius: 3,
//     borderWidth: 1,
//     height: 24,
//     paddingLeft: 10,
//     paddingTop: 3,
//     paddingBottom: 3,
//     flex: 1,
//     fontSize: 14,
//   },
//   navButton: {
//     width: 20,
//     padding: 3,
//     marginRight: 3,
//     alignItems: 'center',
//     justifyContent: 'center',
//     backgroundColor: BGWASH,
//     borderColor: 'transparent',
//     borderRadius: 3,
//   },
//   disabledButton: {
//     width: 20,
//     padding: 3,
//     marginRight: 3,
//     alignItems: 'center',
//     justifyContent: 'center',
//     backgroundColor: DISABLED_WASH,
//     borderColor: 'transparent',
//     borderRadius: 3,
//   },
//   goButton: {
//     height: 24,
//
//     padding: 3,
//     marginLeft: 8,
//     alignItems: 'center',
//     backgroundColor: BGWASH,
//     borderColor: 'transparent',
//     borderRadius: 3,
//     alignSelf: 'stretch',
//   },
//   statusBar: {
//     flexDirection: 'row',
//     alignItems: 'center',
//     paddingLeft: 5,
//     height: 22,
//   },
//   statusBarText: {
//     color: 'white',
//     fontSize: 13,
//   },
//   spinner: {
//     width: 20,
//     marginRight: 6,
//   },
// });



class MyButton extends React.Component {

  render () {

    return (
//        <TouchableOpacity
          //onPress={this.goBack}
          //style={this.state.backButtonEnabled ? styles.navButton : styles.disabledButton}>
          <Text>
            hogehoge
          </Text>
        //</TouchableOpacity>
            // <TouchableOpacity
            // onPress={this.goForward}
            // style={this.state.forwardButtonEnabled ? styles.navButton : styles.disabledButton}>
            // <Text>
            // {'>'}
            // </Text>
            // </TouchableOpacity>
    );
  }
}

module.exports = MyButton;
