# Twilio Programmable Voice for iOS

This repository contains releases for the Twilio Programmable Voice for iOS SDK. These releases can be used on their own, using Carthage or by CocoaPods.


### Carthage Integration

We support integration using Carthage binary frameworks. You can add Programmable Voice for iOS by adding the following line to your Cartfile:
```
binary "https://raw.githubusercontent.com/twilio/twilio-voice-ios/Releases/twilio-voice-ios.json"
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

  pod 'TwilioVoice', '~> 3.0'
end
```
	
Then run `pod install` to install the dependencies for your project.

### Manual Integration

See [manual installation](https://www.twilio.com/docs/api/voice-sdk/ios#install).

## Issues and Support

Please file any issues you find here on Github.
Please ensure that you are not sharing any
[Personally Identifiable Information(PII)](https://www.twilio.com/docs/glossary/what-is-personally-identifiable-information-pii)
or sensitive account information (API keys, credentials, etc.) when reporting an issue.

For general inquiries related to the Voice SDK you can file a [support ticket](https://support.twilio.com/hc/en-us/requests/new).