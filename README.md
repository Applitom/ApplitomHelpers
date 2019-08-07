# ApplitomHelpers

[![Build Status](https://travis-ci.org/Applitom/ApplitomHelpers.svg?branch=master)](https://travis-ci.org/Applitom/ApplitomHelpers)
[![CocoaPods Version](https://img.shields.io/cocoapods/v/ApplitomHelpers.svg)](https://cocoapods.org/pods/ApplitomHelpers)
[![Swift Version](https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat)](https://swift.org)
[![Platform](https://img.shields.io/badge/platform-iOS-lightgrey.svg)](https://developer.apple.com/ios)


## About
ApplitomHelpers is a Swift library that provides helpful extensions and extra helpers to your project.<br/>
I started it for my personal use and decided to publish it as an open-source. I will add more functionality as time passes.

## Content
1. [Requirements](#requirements)
2. [Integration](#integration)
3. [Extentions](#Extentions)
    - [UIImage+Utils](#UIImage+Utils)
    - [Int Extention](#Int-Extentions)

# Requirements
- iOS 9.1+
- Xcode 8

# Integration
You can use [CocoaPods](http://cocoapods.org/) to install `ApplitomHelpers` by adding it to your `Podfile`:

```ruby
platform :ios, '9.0'
use_frameworks!

target 'MyApp' do
    pod 'ApplitomHelpers'
end
```

# Extentions

### UIImage+Utils
##### Create UIImage from the given UIView.
```
convenience init(view: UIView)
```
with this convenience init you can init new UIImagw with an UIView instance

##### Resize an image
```
func resize(newSize:CGSize) -> UIImage
```
##### Add insets to an image
```
func addInsets(insets: UIEdgeInsets) -> UIImage
```
##### Add alpha to an image
```
func imageWithAlpha(_ alphaFactor: CGFloat) -> UIImage
```

### Int Extentions
##### Add commans to Integer
```
func withCommas() -> String
```
returns string number with commas, for example 1000000 will return string of "1,000,000"
