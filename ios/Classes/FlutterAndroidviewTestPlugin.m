#import "FlutterAndroidviewTestPlugin.h"
#import <flutter_androidview_test/flutter_androidview_test-Swift.h>

@implementation FlutterAndroidviewTestPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterAndroidviewTestPlugin registerWithRegistrar:registrar];
}
@end
