# Twilio Programmable Voice for iOS

This repository contains releases for the Twilio Programmable Voice for iOS SDK. These releases can be used on their own, using Carthage or by CocoaPods.


### Carthage Integration

We support integration using Carthage binary frameworks. You can add Programmable Voice for iOS by adding the following line to your Cartfile:
```
github "twilio/twilio-voice-ios"
```

Then run `carthage bootstrap` (or `carthage update` if you are updating your SDKs)

On your application targets’ “Build Phases” settings tab, click the “+” icon and choose “New Run Script Phase”. Create a Run Script in which you specify your shell (ex: `/bin/sh`), add the following contents to the script area below the shell:

```sh
/usr/local/bin/carthage copy-frameworks
```

Add the paths to the frameworks you want to use under “Input Files”, e.g.:

```
$(SRCROOT)/Carthage/Build/iOS/TwilioVoice.framework
```
    
### CocoaPods Integration

We support integration using CocoaPods as well. Following is an example Podfile to consume Voice SDK using CocoaPods:

```
source 'https://github.com/cocoapods/specs'

target 'TARGET_NAME' do
  use_frameworks!

  pod 'TwilioVoice', '~> 2.0'
end
```
	
Then run `pod install` to install the dependencies for your project.

### Manual Integration

See [manual installation](https://www.twilio.com/docs/api/voice-sdk/ios#install).