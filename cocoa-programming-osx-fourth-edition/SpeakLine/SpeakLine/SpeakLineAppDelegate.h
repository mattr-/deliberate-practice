//
//  SpeakLineAppDelegate.h
//  SpeakLine
//
//  Created by Matt Rogers on 6/14/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SpeakLineAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

- (IBAction)stopIt:(id)sender;
- (IBAction)sayIt:(id)sender;

@end
