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


## move to ios directory
invoke "cd ios/"

## install pods
invoke "bundle exec pod install"
invoke "open ReactNativeWithPods.xcworkspace/"

invoke "cd ../"
invoke "JS_DIR=`pwd`/RNComponents"
invoke "npm run start -- --root $JS_DIR"
