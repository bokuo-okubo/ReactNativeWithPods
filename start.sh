#!/bin/sh

## install gem cocoapods
bundle install --path vendor/bundle

## install node modules
npm install
cd ios/

## install pods
bundle exec pod install
open ReactNativeWithPods.xcworkspace/
cd ../
JS_DIR=`pwd`/ReactComponents
cd ios/Pods/Target\ Support\ Files/React
npm run start -- --root $JS_DIR
