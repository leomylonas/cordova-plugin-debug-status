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

    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:status];

    [self success:result callbackId:callbackId];
}

@end
