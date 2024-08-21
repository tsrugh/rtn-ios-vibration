
// #import <RTNIosVibrationSpec/RTNIosVibrationSpec.h>

// NS_ASSUME_NONNULL_BEGIN

// @interface RTNIosVibration : NSObject <NativeIosVibrationSpec>

// @end

// NS_ASSUME_NONNULL_END


#ifdef RCT_NEW_ARCH_ENABLED
#import <RTNIosVibrationSpec/RTNIosVibrationSpec.h>

@interface RTNIosVibration : NSObject <NativeIosVibrationSpec>
#else
#import <React/RCTBridgeModule.h>

@interface RTNIosVibration : NSObject <RCTBridgeModule>
#endif

@end