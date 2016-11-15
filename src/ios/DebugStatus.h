#import <Cordova/CDVPlugin.h>

@interface DebugStatus : CDVPlugin

- (void) getDebugStatus:(CDVInvokedUrlCommand*)command;

@end
