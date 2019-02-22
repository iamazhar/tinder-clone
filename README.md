# Tinder-Clone
Tinder clone built upon the Firestore Firebase database solution; A personal project to learn and practice the creation of the various moving parts of a dating app programmatically.

Supports: iOS 10.x and above

![Screenshot 1](Tinder-Clone/1.png)
![Screenshot 1](Tinder-Clone/2.png)


## Branches:

* master - stable app release
* develop - development branch, merge your feature branches here

## Dependencies:

The project is using cocoapods for managing external libraries and a Gemfile for managing the cocoapods version.

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
