#import "DebugStatus.h"

@implementation DebugStatus

- (void)getDebugStatus:(CDVInvokedUrlCommand*)command
{

    NSString* callbackId = [command callbackId];

	#ifdef DEBUG
		NSString* status = @"release";
	#else
		NSString* status = @"debug";
	#endif

    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:status];

    [self success:result callbackId:callbackId];
}

@end
