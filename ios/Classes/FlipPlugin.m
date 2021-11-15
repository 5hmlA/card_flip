#import "FlipPlugin.h"
#if __has_include(<flip/flip-Swift.h>)
#import <flip/flip-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flip-Swift.h"
#endif

@implementation FlipPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlipPlugin registerWithRegistrar:registrar];
}
@end
