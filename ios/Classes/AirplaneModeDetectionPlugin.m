#import "AirplaneModeDetectionPlugin.h"
#import <airplane_mode_detection/airplane_mode_detection-Swift.h>

@implementation AirplaneModeDetectionPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAirplaneModeDetectionPlugin registerWithRegistrar:registrar];
}
@end
