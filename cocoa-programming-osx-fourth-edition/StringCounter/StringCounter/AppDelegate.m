//
//  AppDelegate.m
//  StringCounter
//
//  Created by Matt Rogers on 7/4/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}
- (IBAction)countCharacters:(id)sender {
    NSString *stringToCount = [_textField stringValue];
    NSString *lengthCount = [NSString stringWithFormat:@"%lu", (unsigned long)[stringToCount length]];
    [_countDisplay setStringValue:lengthCount];
}

@end
