# Twilio Programmable Voice for iOS

This repository contains releases for the Twilio Programmable Voice for iOS SDK. These releases can be installed using Swift Package Manager, CocoaPods or manually, as you prefer.

### Swift Package Manager

You can add Programmable Voice for iOS by adding the `https://github.com/twilio/twilio-voice-ios` repository as a Swift Package. You can choose `TwilioVoice` in **Frameworks, Libraries and Embedded Content** if you want to integrate the dynamic framework version of the SDK, or `TwilioVoice-static` if you want the static framework version.

If you are using the static framework, add `SystemConfiguration.framework` to **Frameworks, Libraries and Embedded Content**.

### CocoaPods

It's easy to install the Voice framework if you manage your dependencies using [CocoaPods](http://cocoapods.org). Simply add the following to your `Podfile`:

~~~rb
source 'https://github.com/cocoapods/specs'

target 'TARGET_NAME' do
  use_frameworks!

  pod 'TwilioVoice', '~> 0.9'
end
~~~

Then run `pod install --verbose` to install the dependencies to your project.

To integrate the static framework, use the `TwilioVoice-static` pod:

```rb
  pod 'TwilioVoice-static', '~> 6.13'
```

### Manual Integration

See [manual installation](https://www.twilio.com/docs/voice/voip-sdk/ios#manual-install).

## Issues and Support

Please file any issues you find here on Github.
Please ensure that you are not sharing any
[Personally Identifiable Information(PII)](https://www.twilio.com/docs/glossary/what-is-personally-identifiable-information-pii)
or sensitive account information (API keys, credentials, etc.) when reporting an issue.

For general inquiries related to the Voice SDK you can file a [support ticket](https://support.twilio.com/hc/en-us/requests/new).

## License

Twilio Programmable Voice for iOS is distributed under [TWILIO-TOS](https://www.twilio.com/legal/tos).
