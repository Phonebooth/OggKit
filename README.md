# ogg-swift
A Swift wrapper to use [libogg api](https://www.xiph.org/ogg/doc/libogg/index.html). 

Intension of this project is to support any application with a platform independend XCFramework that can be integrated in Swift projects via CocoaPod or Swift Package Manager.

It supports iOS devices and simulators (version 14+) and macOS (versions 10.10+).

# Version
The supported version of libogg API is 1.3.5.

# Integration 
After integration use 
```swift 
import OggKit
``` 
in your Swift code.

## if you use CocoaPods 
The Cocoa Podfile of a project using this framework, should look like
```ruby
platform :ios, '14.0'
target 'some-app' do
  use_frameworks!
  source 'https://github.com/CocoaPods/Specs.git'
  pod 'OggKit'
end
```
## If you use Swift Package Management
The Package.swift using this framework should look like
```swift 
  ...
  dependencies: [
    .package(
      name: "OggKit", 
      url: "git@github.com:tethridge/ogg-swift.git",
      from: "1.3.5"),
  ...
```

# If you are updating the source to a new version of libogg, these are the steps to publish a new release of this xcframework
- Download the source from https://xiph.org/downloads/ for libogg
- Unzip the library and copy the source files into include and src directories
- Delete existing version of OggKit.xcframework.zip from root directory
- Update the version in Config.xcconfig
- Run build script in the root directory. This will build the new xcframework and zip it up.
- Run compute-checksum.sh script to get the new checksum for the zipped xcframework.
- Update the version and checksum in Package.swift
- Update the podspec file with the new version and path to zipped framework
- Check in changes to git and push to origin repo
- Create a release with the new version

# Licenses
This project is under MIT license. It makes use of the sources for ogg from [xiph.org/downloads](https://xiph.org/downloads/). Ogg is licensed under the [New BSD License](https://wiki.xiph.org/XiphWiki:Copyrights). See the [LICENSE](https://github.com/ybrid/ogg-swift/blob/master/LICENSE) file.