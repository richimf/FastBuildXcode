# FastBuildXcode

Xcode Fast Build as: `Xcode extension` or `macOS App`.

## Features:

#### See list of Schemes

> xcodebuild -list -project <NAME>.xcodeproj/
  
#### Copy the desire Scheme and run

> xcodebuild -scheme <SCHEME NAME> build
  
> xcodebuild -scheme <SCHEME NAME> build

#### Build/run iOS Xcode project from Terminal

> /usr/bin/xcodebuild -target Testing -configuration Debug

> xcodebuild -project <NAME>.xcodeproj -target <NAME> -configuration Debug -sdk iphonesimulator11.4 clean build

> xcodebuild -project <NAME>.xcodeproj -target <NAMEAPP> -configuration Debug -sdk iphonesimulator11.4 clean build

#### List Targets

> xcodebuild -list

#### Analysing

> $ xcodebuild -project <NAME>.xcodeproj -scheme CLI -sdk iphonesimulator10.3 clean analyze

> $ xcodebuild -project <NAME>.xcodeproj -alltargets -configuration Release

#### Building

We can simply build our app to run inside simulators by using simple command:

> $ xcodebuild -scheme CLI -workspace <NAME>.xcworkspace/ build

#### Build for Testing

We can build for testing using command:

> $ xcodebuild build-for-testing -workspace <NAME>.xcworkspace -scheme <NAME> -destination generic/platform=iOS
  
 #### Clear Derived Data
 
 > rm -rf ~/Library/Developer/Xcode/DerivedData

