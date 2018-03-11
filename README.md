# MEDLoadingOverlay

[![Build Status](https://travis-ci.org/codebit-inc/MEDLoadingOverlay.svg?branch=master)](https://travis-ci.org/codebit-inc/MEDLoadingOverlay)

_a simple overlay view shows loading animation for iOS apps_

##### How Does It Work?

```swift
/* to show the loading overlay */
MEDLoadingOverlay.shared.showOverlay(inView: (self.navigationController?.view)!, withColor: .gray)

/* to hide the loading overlay */
MEDLoadingOverlay.shared.hideOverlayView()
```

##### Demo

![Demo](https://github.com/codebit-inc/MEDLoadingOverlay/blob/master/MEDLoadingOverlay-Demo.gif)