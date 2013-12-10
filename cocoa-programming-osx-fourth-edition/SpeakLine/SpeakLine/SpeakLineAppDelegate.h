//(
//  SpeakLineAppDelegate.h
//  SpeakLine
//
//  Created by Matt Rogers on 11/30/13.
//  Copyright (c) 2013 Matt Rogers. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SpeakLineAppDelegate : NSObject <NSApplicationDelegate>
{
    NSSpeechSynthesizer *_speechSynth;
}

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;

- (IBAction)sayIt:(id)sender;
- (IBAction)stopIt:(id)sender;

@end
