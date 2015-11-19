#!/bin/sh

npm install
cd ios/
pod install
open ReactNativeWithPods.xcworkspace/
cd ../
JS_DIR=`pwd`/ReactComponents
cd ios/Pods/Target\ Support\ Files/React
npm run start -- --root $JS_DIR
