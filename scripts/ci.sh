#!/usr/bin/env bash

set -e

xcodebuild -project swift-lintcode.xcodeproj -scheme "swift-lintcode" -destination "platform=iOS Simulator,name=iPhone 6" test
