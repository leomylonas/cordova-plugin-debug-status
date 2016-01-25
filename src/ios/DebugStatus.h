#import <Cordova/CDV.h>

@interface DebugStatus : CDVPlugin

- (void) getDebugStatus:(CDVInvokedUrlCommand*)command;

@end
