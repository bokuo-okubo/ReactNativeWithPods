#!/bin/sh

npm install
cd ios/
pod install
open ReactNativeWithPods.xcworkspace/
cd ../
JS_DIR=`pwd`/RNComponents
npm run start -- --root $JS_DIR
