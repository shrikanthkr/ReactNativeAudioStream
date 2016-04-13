run **npm install*

cd ios

Run **pod install**

run **cd ..**

run **react-native run-ios**

To Edit on native part
Open file **AudioStream2.xcworkspace** on xcode 

----

Creating the native bridge

I created two files

1. RCTCustom.h
2. RCTCustom.m 

.h is the header file where we declare all our interfaces and modules to import. In our case I have to `#import "RCTBridgeModule.h"`, and define an interface 
`
@interface RCTCustom : NSObject <RCTBridgeModule>
@end
` which am going to implement and write our custom function.


Once done get to the .m file where the actual implementation happens.
`#import "RCTCustom.h"` include the .h file defined,
then our implementation code 
`@implementation RCTCustom ... 
@end`
between this code our entire implementation goes.

##Expose Module

`RCT_EXPORT_MODULE(); ` says that this module entirely is accessible in ReactJavascript layer. If want to give a specific name `RCT_EXPORT_MODULE("MyModuleName");`.


###Exposing a method

`RCT_EXPORT_METHOD(play:(NSString *)url)
{
  RCTLogInfo(@"Pretending to create an event %@ ", url);
  STKAudioPlayer* audioPlayer = [[STKAudioPlayer alloc] init];
  [audioPlayer play:url];
}   
`

##Javacript layer

Add **NativeModules** to import
`var RCTCustom = NativeModules.Custom;` A small glitch here, please note that the module we import doesn't have **RCT** prefix in that

## Calling the function

`RCTCustom.play('http://195.154.217.103:8175/stream')`




