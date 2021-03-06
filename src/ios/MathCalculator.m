/********* MathCalculator.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface MathCalculator : CDVPlugin {
  // Member variables go here.
}

- (void)sampleMethod:(CDVInvokedUrlCommand*)command;
@end

@implementation MathCalculator

- (void)sampleMethod:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];
    echo = [NSString stringWithFormat: @"Hello from ios %@", echo];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
