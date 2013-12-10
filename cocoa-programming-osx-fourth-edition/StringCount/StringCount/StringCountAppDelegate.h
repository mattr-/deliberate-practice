//
//  StringCountAppDelegate.h
//  StringCount
//
//  Created by Matt Rogers on 11/30/13.
//  Copyright (c) 2013 Matt Rogers. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface StringCountAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSTextField *countDisplay;

- (IBAction)countStringLength:(id)sender;

@end
