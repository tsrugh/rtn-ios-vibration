#import "RTNIosVibration.h"

#import <AudioToolbox/AudioToolbox.h>
#import <React/RCTLog.h>

@implementation RTNIosVibration

RCT_EXPORT_MODULE()

- (void)vibrate 
{
    RCTLogInfo(@"vibrate");
}
- (void)vibrateError 
{
    RCTLogInfo(@"vibrate Error");
    AudioServicesPlaySystemSound(1521);
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeIosVibrationSpecJSI>(params);
}

@end