# Tinder-Clone :couple_with_heart:
Tinder clone built upon the Firestore Firebase database solution. :warning: You will need to setup your own Firebase project and add your firebase plist file to the project.

Supports: iOS 10.x and above

![Screen](2.png)


## Branches:

* master - stable app release
* develop - development branch, merge your feature branches here

## Dependencies:

The project is using cocoapods for managing external libraries.

Install the pods

```
pod install
```

### Core Dependencies

* SDWebImage - This library provides an async image downloader with cache support
* JGProgressHUD - An elegant and simple progress HUD for iOS and tvOS.

## Project structure:

* ViewModels - card view, registration view and login view MVVM layer
* Model - model Objects
* Views - contains all view layer code
* Extensions - protocols, extension and utility classes
