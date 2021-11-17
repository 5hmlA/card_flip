#import "CardFlipPlugin.h"
#if __has_include(<card_flip/card_flip-Swift.h>)
#import <card_flip/card_flip-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "card_flip-Swift.h"
#endif

@implementation CardFlipPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCardFlipPlugin registerWithRegistrar:registrar];
}
@end
