#import "RTNIosVibration.h"

#import <AudioToolbox/AudioToolbox.h>
#import <React/RCTLog.h>

@implementation RTNIosVibration

RCT_EXPORT_MODULE()

// - (void)vibrate 
// {
//     RCTLogInfo(@"vibrate");
// }
// - (void)vibrateError 
// {
//     RCTLogInfo(@"vibrate Error");
//     AudioServicesPlaySystemSound(1521);
// }

RCT_EXPORT_METHOD(vibrate)
{
    RCTLogInfo(@"vibrate");
}
RCT_EXPORT_METHOD(vibrateError)
{
    RCTLogInfo(@"vibrate Error");
    AudioServicesPlaySystemSound(1521);
}

#ifdef RCT_NEW_ARCH_ENABLED
- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeIosVibrationSpecJSI>(params);
}
#endif
@end