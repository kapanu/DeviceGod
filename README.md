# DeviceGod
(c) Kapanu AG 2018, Nicolas Degen (@nidegen)

Framework to provide tech specs of iOS Devices.


## Usage

We extended the UIDevice class to provide tech specs:
```
// on iPhone SE
UIDevice.current.modelIdentifier // returns "iPhone8,4"
UIDevice.current.isOfType(.iPad) // returns false
UIDevice.current.screenData!.ppi // returns 326.0 (points per inch)
```

## Carthage

Install Carthage with Homebrew using the following command:

```
$ brew update
$ brew install carthage
```
To integrate DevideGod into your Xcode project using Carthage, specify it in your Cartfile:

github "kapanu/DeviceGod" ~> 1.0
Run `carthage update` to build the framework and drag the built `DeviceGod.framework` into your Xcode project.


## References
The device tech specs have been used from following sources
* [Stackoverflow 11197509](https://stackoverflow.com/questions/11197509/how-to-get-device-make-and-model-on-ios)
* [Stackoverflow 33493800](https://stackoverflow.com/questions/33493800/how-to-get-the-iphone-type-from-simulator-ios)
* [Apple iOS Device Compatibility Reference](https://developer.apple.com/library/content/documentation/DeviceInformation/Reference/iOSDeviceCompatibility/Cameras/Cameras.html)
* [iosres.com](http://iosres.com)
