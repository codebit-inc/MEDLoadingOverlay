# MEDLoadingOverlay

[![Build Status](https://travis-ci.org/codebit-inc/MEDLoadingOverlay.svg?branch=master)](https://travis-ci.org/codebit-inc/MEDLoadingOverlay)
[![License](https://img.shields.io/github/license/codebit-inc/MEDLoadingOverlay.svg)](https://github.com/codebit-inc/MEDLoadingOverlay)

## About

_MEDLoadingOverlay is a simple overlay view shows loading animation for iOS apps._

## Installation

### Installing MEDLoadingOverlay with CocoaPods

MEDLoadingOverlay is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

target 'Your App Target' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Your App
  pod 'MEDLoadingOverlay'

end
```

### Installing MEDLoadingOverlay Manually

- Open the `/Pod/Classes` folder, then drag `MEDActivityIndicatorView.swift` and `MEDLoadingOverlay.swift` into the file navigator of your app project.

## How Does It Work?

```swift
/* to show the loading overlay */
MEDLoadingOverlay.shared.showOverlay(inView: (self.navigationController?.view)!, withColor: .gray)

/* to hide the loading overlay */
MEDLoadingOverlay.shared.hideOverlayView()
```

## Demo

<img src="https://github.com/codebit-inc/MEDLoadingOverlay/blob/master/MEDLoadingOverlay-Demo.gif" width="350"/>

## License

This project is available under the MIT license. See the LICENSE file for more info.