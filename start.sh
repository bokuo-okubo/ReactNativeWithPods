#!/bin/sh

separator() {
    echo "-------------"
}

invoke() {
    echo "$1"
    eval "$1"
    separator
}

## install gem cocoapods
invoke "bundle install --path vendor/bundle"

## install node modules
invoke "npm install"

## install pods
invoke "cd ios/"
invoke "bundle exec pod install"
invoke "open ReactNativeWithPods.xcworkspace/"

## run React server
invoke "cd ../"
invoke "JS_DIR=`pwd`/RNComponents"
invoke "npm run start -- --root $JS_DIR"
