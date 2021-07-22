#import "FlutterAirplaneModeDetectionPlugin.h"
#if __has_include(<flutter_airplane_mode_detection/flutter_airplane_mode_detection-Swift.h>)
#import <flutter_airplane_mode_detection/flutter_airplane_mode_detection-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_airplane_mode_detection-Swift.h"
#endif

@implementation FlutterAirplaneModeDetectionPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterAirplaneModeDetectionPlugin registerWithRegistrar:registrar];
}
@end
