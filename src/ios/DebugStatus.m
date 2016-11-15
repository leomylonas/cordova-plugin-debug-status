#import "DebugStatus.h"

@implementation DebugStatus

- (void)getDebugStatus:(CDVInvokedUrlCommand*)command
{

    NSString* callbackId = [command callbackId];

	#if DEBUG
		NSString* status = @"debug";
	#else
		NSString* status = @"release";
	#endif

    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:status];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
