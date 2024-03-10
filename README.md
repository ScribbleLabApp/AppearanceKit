![appearancekit-hero](https://github.com/ScribbleLabApp/AppearanceKit/assets/129311622/c7e21753-238a-4b4b-b32e-10e54a88df10)

# AppearanceKit

AppearanceKit is your go-to solution for comprehensive customization of color schemes across iOS, iPadOS, and macOS interfaces. This intuitive tool seamlessly integrates into your system, empowering effortless personalization, ensuring your digital experience reflects your unique style. With AppearanceKit, elevate your interface aesthetics and enjoy a tailored, visually striking environment across all your devices

Embrace a declarative approach to color customization with AppearanceKit. Define your color schemes, gradients, and styles using a concise syntax, allowing for easy and expressive customization.
AppearanceKit seamlessly integrates with your existing app structure. Utilize the framework to enhance your app's visual appeal without the need for extensive modifications to your codebase.

> The NightOwl sample project is associated with AppearanceKit. Check it out here: [SwiftUI]() | [Obj-C]()

## Features

- **Flexible Customization:** Tailor your app's look to suit your app's unique style with a range of customizable features, including fonts, custom themes, and more.
- **Create and use your custom themes:** Create your own custom themes and use them in your application.
- **Easy Integration:** Simple and intuitive API for seamless integration into your iOS projects.

## 🖥️ Installation

### Requirements
- iOS 17.1+
- Xcode 15.2+
- Swift 5.9 (AppearanceKit 1.x.x) `(legacy support later)`

### Install

#### Swift Package Manager (recommended)
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

#### CocoaPods (Deprecated)
To install with [CocoaPods](http://cocoapods.org/), simply add this in your Podfile:
```ruby
platform :ios, '17.0'

target 'test abstract' do
  use_frameworks!
  pod 'AppearanceKit'

end
```

#### Carthage (Deprecated)
To install with [Carthage](https://github.com/Carthage/Carthage), simply add this in your `Cartfile`:
```ruby
github "ScribbleLabApp/AppearanceKit"
```

## 🚀 Quickstart
> Before you start, please star ⭐️ this repository. Your star is our biggest motivation to pull all-nighters and maintain this open-source project. If you like the idea behind this project, please share it with your friends, colleagues, or anyone who might find it valuable.

## 🛠️ Usage

## 📖 Cheatsheet
### Modifiers

### Parameters

### Views

## 🧰 Supported Avatar types

## 💪 Contribute

Contributions are welcome here for coders and non-coders alike. No matter what your skill level is, you can for certain contribute to ScribbleLabApp's open source community. Please read Contributing.md and the step-by-setp guide before starting.

If you encounter ANY issue, have ANY concerns, or ANY comments, please do NOT hesitate to let us know. Open a discussion, issue, or [email us](scribblelabapp.dev@gmail.com). As a developer, we feel you when you don't understand something in the codebase. We try to comment and document as best as we can, but if you happen to encounter any issues, we will be happy to assist in any way we can.

## Contributors
We would like to express our gratitude to all the individuals who have already contributed to AppearanceKit! If you have any AppearanceKit-related project, documentation, tool or template, please feel free to contribute it by submitting a pull request to our curated list on GitHub.

## Support Us
Your support is valuable to us and helps us dedicate more time to enhancing and maintaining this repository. Here's how you can contribute:

⭐️ Leave a Star: If you find this repository useful or interesting, please consider leaving a star on GitHub. Your stars help us gain visibility and encourage others in the community to discover and benefit from this work.

📲 Share with Friends: If you like the idea behind this project, please share it with your friends, colleagues, or anyone who might find it valuable.
