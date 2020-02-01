//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<flutter_tts/FlutterTtsPlugin.h>)
#import <flutter_tts/FlutterTtsPlugin.h>
#else
@import flutter_tts;
#endif

#if __has_include(<tinder_card/TinderCardPlugin.h>)
#import <tinder_card/TinderCardPlugin.h>
#else
@import tinder_card;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FlutterTtsPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterTtsPlugin"]];
  [TinderCardPlugin registerWithRegistrar:[registry registrarForPlugin:@"TinderCardPlugin"]];
}

@end
