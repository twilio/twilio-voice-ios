# Migrating to iOS 13

## iOS 13 & Xcode 11 Support

This document provides migration guides to support the new [PushKit push notification policy](https://developer.apple.com/documentation/pushkit/pkpushregistrydelegate/2875784-pushregistry) that iOS 13 and Xcode 11 introduced.

This new policy mandates that Apps built with Xcode 11 and running on iOS 13, which receive VoIP push notifications, must now report all PushKit push notifications to CallKit. Failure to do so will result in iOS 13 terminating the App and barring any further PushKit push notifications. You can read more about this policy and breaking changes [here](https://support.twilio.com/hc/en-us/articles/360035005593-iOS-13-Xcode-11-Breaking-Changes).

The SDK now handles incoming call cancellations internally. The “cancel” push notification is no longer required or supported by new releases of the SDK.

### Migration Guides

- [Migrate from Twilio Voice 3.x/4.x to 5.0](#migrate-from-twilio-voice-3x4x-to-5x)
- [Migrate from Twilio Voice 2.0 to 2.1](#migrate-from-twilio-voice-20-to-21)

## Migrating from Twilio Voice 3.x/4.x to 5.x

If your App supports incoming calls, you **MUST** perform the following steps to comply with the new policy:

1. Upgrade to Twilio Voice iOS SDK to 5.0.0
2. Report the call to CallKit. Refer to this [example](https://github.com/twilio/voice-quickstart-swift/tree/master) for how to report the call to CallKit.
3. Update how you decode the PushKit token

	**Swift**
	
	```.swift
	func pushRegistry(_ registry: PKPushRegistry, didUpdate credentials: PKPushCredentials, for type: PKPushType) {
	    ...
	    let deviceToken = credentials.token.map { String(format: "%02x", $0) }.joined()
	    ...
	}
	```

	**Objective-C**
	
	```.objc
	- (void)pushRegistry:(PKPushRegistry *)registry didUpdatePushCredentials:(PKPushCredentials *)credentials forType:(NSString *)type {
	    ...
	    const unsigned *tokenBytes = [credentials.token bytes];
	    self.deviceTokenString = [NSString stringWithFormat:@"<%08x %08x %08x %08x %08x %08x %08x %08x>", 
	                                                        ntohl(tokenBytes[0]), ntohl(tokenBytes[1]), ntohl(tokenBytes[2]),
	                                                        ntohl(tokenBytes[3]), ntohl(tokenBytes[4]), ntohl(tokenBytes[5]),
	                                                        ntohl(tokenBytes[6]), ntohl(tokenBytes[7])];
	    ...
	}
	```

4. You must register via `[TwilioVoice registerWithAccessToken:deviceToken:completion:]` when your App starts. This ensures that your app no longer receives “cancel” push notifications. A "call" push notification, when passed to `[TwilioVoice handleNotification:delegate:delegateQueue:]`, will return a `TVOCallInvite` object to you synchronously via the `[TVONotificationDelegate callInviteReceived:]` method when `[TwilioVoice handleNotification:delegate:delegateQueue:]` is called. A `TVOCancelledCallInvite` will be raised asynchronously via `[TVONotificationDelegate cancelledCallInviteReceived:error:]` if any of the following events occur:
	- The call is prematurely disconnected by the caller.
	- The callee does not accept or reject the call in approximately 30 seconds.
	- The Voice SDK is unable to establish a connection to Twilio.
  
  You must retain the `TVOCallInvite` to be notified of a cancellation via `[TVONotificationDelegate cancelledCallInviteReceived:error:]`. A `TVOCancelledCallInvite` will not be raised if the `TVOCallInvite` is accepted or rejected.
  
  Failure to register with the new release of the SDK may result in app terminations since "cancel" push notifications will continue to be sent to your application and will not comply with the new PushKit push notification policy. If a "cancel" push notification is received, the `[TwilioVoice handleNotification:delegate:delegateQueue:]` method will now return `false`.
  
  To register with the new SDK you must use the following methods:

	**Swift**
	
	```.swift
	TwilioVoice.register(withAccessToken: accessToken, deviceToken: deviceToken) { (error) in
	    ...
	}
	```
	
	**Objective-C**
	
	```.objc
	[TwilioVoice registerWithAccessToken:accessToken
	                                 deviceToken:self.deviceTokenString
	                                  completion:^(NSError *error) {
	    ...
	}
	```


5. If you were previously toggling `enableInsights` or specifying a `region` via `TVOCallOptions`, you must now set the `insights` and `region` property on the `TwilioVoice` class. You must do so before `[TwilioVoice connectWithAccessToken:delegate:]` or `[TwilioVoice handleNotification:delegate:delegateQueue:]` is called.

You can reference the 5.0 quickstart for [obj-c](https://github.com/twilio/voice-quickstart-objc) and [swift](https://github.com/twilio/voice-quickstart-swift) when migrating your application.

## Migrating from Twilio Voice 2.0 to 2.1

If your App supports incoming calls, you **MUST** perform the following steps to comply with the new policy:

1. Upgrade to Twilio Voice iOS SDK to 2.1.0
2. Report the call to CallKit. Refer to this [example](https://github.com/twilio/voice-quickstart-swift/tree/2.x) for how to report the call to CallKit.
3. Update how you decode the PushKit device token

	**Swift**
	
	```.swift
	func pushRegistry(_ registry: PKPushRegistry, didUpdate credentials: PKPushCredentials, for type: PKPushType) {
	    ...
	    let deviceToken = credentials.token.map { String(format: "%02x", $0) }.joined()
	    ...
	}
	```

	**Objective-C**
	
	```.objc
	- (void)pushRegistry:(PKPushRegistry *)registry didUpdatePushCredentials:(PKPushCredentials *)credentials forType:(NSString *)type {
	    ...
	    const unsigned *tokenBytes = [credentials.token bytes];
	    self.deviceTokenString = [NSString stringWithFormat:@"<%08x %08x %08x %08x %08x %08x %08x %08x>", 
	                                                        ntohl(tokenBytes[0]), ntohl(tokenBytes[1]), ntohl(tokenBytes[2]),
	                                                        ntohl(tokenBytes[3]), ntohl(tokenBytes[4]), ntohl(tokenBytes[5]),
	                                                        ntohl(tokenBytes[6]), ntohl(tokenBytes[7])];
	    ...
	}
	```

4. You must register via `[TwilioVoice registerWithAccessToken:deviceToken:completion:]` when your App starts. This ensures that your app no longer receives “cancel” push notifications. A "call" push notification, when passed to `[TwilioVoice handleNotification:delegate:]`, will return a `TVOCallInvite` object to you synchronously via the `[TVONotificationDelegate callInviteReceived:]` method when `[TwilioVoice handleNotification:delegate:]` is called. The SDK will invoke the `[TVONotificationDelegate callInviteReceived:]` method asynchronously with a `TVOCallInvite` object of state `TVOCallInviteStateCanceled` if any of the following events occur:
	- The call is prematurely disconnected by the caller.
	- The callee does not accept or reject the call in approximately 30 seconds.
	- The Voice SDK is unable to establish a connection to Twilio.
  
  The `[TVONotificationDelegate callInviteReceived:]` method will not be raised with a `TVOCallInvite` object of state `TVOCallInviteStateCanceled` if the `TVOCallInivte` is accepted or rejected.
  
  Failure to register with the new release of the SDK may result in app terminations since "cancel" push notifications will continue to be sent to your application and will not comply with the new PushKit push notification policy. A new error [`TVOErrorUnsupportedCancelMessageError (31302)`](https://www.twilio.com/docs/api/errors/31302) is raised when a "cancel" push notification is provided to `[TwilioVoice handleNotification:delegate:]` via `[TVONotificationDelegate notificationError:]`.

 To register with the new SDK you must use the following methods:
 
	**Swift**
	
	```.swift
	TwilioVoice.register(withAccessToken: accessToken, deviceToken: deviceToken) { (error) in
	    ...
	}
	```

	**Objective-C**
	
	```
	[TwilioVoice registerWithAccessToken:accessToken
	                         deviceToken:self.deviceTokenString
	                          completion:^(NSError *error) {
	    ...
	}
	```

5. If you were specifying a region via the `TwilioVoice.h` region property you must now do so before `[TwilioVoice call:params:delegate:]` or `[TwilioVoice handleNotification:delegate:]` is called.

You can reference the 2.1 quickstart for [obj-c](https://github.com/twilio/voice-quickstart-objc/tree/2.x) and [swift](https://github.com/twilio/voice-quickstart-swift/tree/2.x) when migrating your application.
