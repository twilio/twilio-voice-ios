# Twilio Programmable Voice for iOS

The iOS Voice framework can be installed using Swift Package Manager, CocoaPods or manually, as you prefer.


### Swift Package Manager

You can add Programmable Voice for iOS by adding the https://github.com/twilio/twilio-voice-ios repository as a Swift Package.

In your Build Settings, you will also need to modify Other Linker Flags to include -ObjC.

As of the latest release of Xcode (currently 12.4), there is a known issue with consuming binary frameworks distributed via Swift Package Manager. The current workaround to this issue is to add a Run Script Phase to the Build Phases of your Xcode project. This Run Script Phase should come after the Embed Frameworks build phase. This new Run Script Phase should contain the following code:

```
find "${CODESIGNING_FOLDER_PATH}" -name '*.framework' -print0 | while read -d $'\0' framework
do
    codesign --force --deep --sign "${EXPANDED_CODE_SIGN_IDENTITY}" --preserve-metadata=identifier,entitlements --timestamp=none "${framework}"
done
```
    
### CocoaPods Integration

We support integration using CocoaPods as well. Following is an example Podfile to consume Voice SDK using CocoaPods:

```
source 'https://github.com/cocoapods/specs'

target 'TARGET_NAME' do
  use_frameworks!

  pod 'TwilioVoice', '~> 6.2.0'
end
```
	
Then run `pod install --verbose` to install the dependencies for your project.

### Carthage

Carthage is not currently a supported distribution mechanism for Twilio Voice. Carthage does not currently work with .xcframeworks as documented here. Once Carthage supports binary .xcframeworks, Carthage distribution will be re-added.

### Manual Integration

See [manual installation](https://www.twilio.com/docs/voice/voip-sdk/ios#manual-install).

## Issues and Support

Please file any issues you find here on Github.
Please ensure that you are not sharing any
[Personally Identifiable Information(PII)](https://www.twilio.com/docs/glossary/what-is-personally-identifiable-information-pii)
or sensitive account information (API keys, credentials, etc.) when reporting an issue.

For general inquiries related to the Voice SDK you can file a [support ticket](https://support.twilio.com/hc/en-us/requests/new).
