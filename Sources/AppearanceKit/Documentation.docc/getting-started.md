# Quick Start: Configure AppearanceKit for your project

A quickstart guide on configuring AppearanceKit for your application

@Metadata {
    @Available(iOS, introduced: "17.0") 
    @Available(Xcode, introduced: "15.2") 
    @Available(Swift, introduced: "5.9")
    @Available(AppearanceKit, introduced: "1.0.0")
}

## Overview

> Warning:
> We are currently working on a legacy version of AppearanceKit. If you are using `Swift 5.9+` please use `AppearanceKit 1.x.x`.

### Installation

##### Swift Package Manager (recommended)
You can install `AppearanceKit` into your Xcode project via SPM. To learn more about SPM, click [here](https://swift.org/package-manager/)

1. In Xcode 12, open your project and navigate to File → Swift Packages → Add Package Dependency...

For Xcode 13+, navigate to **Files → Add Package**

1. Paste the repository URL (https://github.com/ScribbleLabApp/AppearanceKit.git) and click Next.
2. For Version, verify it's **Up to next major**.
3. Click Next and select the AppearanceKit target
4. Click Finish
5. You are all set, thank you for using AppearanceKit!

You can also add it to the dependencies of your `Package.swift` file:
```swift
dependencies: [
  .package(url: "https://github.com/ScribbleLabApp/AppearanceKit", .upToNextMajor(from: "1.0.0"))
]
```

##### CocoaPods (Deprecated)
To install with [CocoaPods](http://cocoapods.org/), simply add this in your Podfile:
```ruby
platform :ios, '17.0'

target 'test abstract' do
  use_frameworks!
  pod 'AppearanceKit'

end
```

Then run the following code in your terminal:

```sh
$ pod install
$ open YourApp.xcworkspace
```

##### Carthage (Deprecated)
To install with [Carthage](https://github.com/Carthage/Carthage), simply add this in your `Cartfile`:
```ruby
github "ScribbleLabApp/AppearanceKit"
```

Then run the following code in your terminal:

```sh
$ carthage update --use-xcframeworks
```

### Section header

<!--@START_MENU_TOKEN@-->Text<!--@END_MENU_TOKEN@-->
