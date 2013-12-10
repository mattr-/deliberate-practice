//
//  StringCountAppDelegate.m
//  StringCount
//
//  Created by Matt Rogers on 11/30/13.
//  Copyright (c) 2013 Matt Rogers. All rights reserved.
//

#import "StringCountAppDelegate.h"

@implementation StringCountAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (id)init
{
    self = [super init];
    if (self) {
        NSLog(@"init");
    }
    return self;
}

- (IBAction)countStringLength:(id)sender {
    NSString *string = [_textField stringValue];
    
    if ([string length] == 0) {
        [_countDisplay setStringValue:@"Empty string has zero characters"];
    }
    
    NSString *displayString = [NSString stringWithFormat: @"'%@' is %lu characters", string, (unsigned long)[string length]];
    [_countDisplay setStringValue:displayString];
    
}

@end
