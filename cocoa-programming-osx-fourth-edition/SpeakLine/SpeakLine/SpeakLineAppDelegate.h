//
//  SpeakLineAppDelegate.h
//  SpeakLine
//
//  Created by Matt Rogers on 6/14/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SpeakLineAppDelegate :
    NSObject <NSApplicationDelegate, NSSpeechSynthesizerDelegate>
{
    NSArray *_voices;
    NSSpeechSynthesizer *_speechSynth;
}

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSButton *startButton;
@property (weak) IBOutlet NSButton *stopButton;
@property (weak) IBOutlet NSTableView *tableView;


- (IBAction)stopIt:(id)sender;
- (IBAction)sayIt:(id)sender;

@end
