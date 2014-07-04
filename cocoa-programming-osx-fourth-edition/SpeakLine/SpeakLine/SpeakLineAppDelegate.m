//
//  SpeakLineAppDelegate.m
//  SpeakLine
//
//  Created by Matt Rogers on 6/14/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "SpeakLineAppDelegate.h"

@implementation SpeakLineAppDelegate

-(id)init
{
    self = [super init];
    if (self) {
        NSLog(@"init");
        _speechSynth = [[NSSpeechSynthesizer alloc] initWithVoice:nil];
        [_speechSynth setDelegate:self];
        
        _voices = [NSSpeechSynthesizer availableVoices]; 
    }
    
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (void)awakeFromNib
{
    NSString *defaultVoice = [NSSpeechSynthesizer defaultVoice];
    NSInteger defaultRow = [_voices indexOfObject:defaultVoice];
    NSIndexSet *indices = [NSIndexSet indexSetWithIndex:defaultRow];
    [_tableView selectRowIndexes:indices byExtendingSelection:NO];
    [_tableView scrollRowToVisible:defaultRow];    
}

- (IBAction)stopIt:(id)sender {
    NSLog(@"Silencing");
    [_speechSynth stopSpeaking];
}

- (IBAction)sayIt:(id)sender {
    NSString *string = [_textField stringValue];
    
    if ([string length] == 0) {
        NSLog(@"String from %@ is zero length", _textField);
        return;
    }
    
    
    [_speechSynth startSpeakingString:string];
    [_stopButton setEnabled:YES];
    [_startButton setEnabled:NO];
    [_tableView setEnabled:NO];
    
}

- (void)speechSynthesizer:(NSSpeechSynthesizer *)sender didFinishSpeaking:(BOOL)finishedSpeaking
{
    NSLog(@"Finished Speaking: %d", finishedSpeaking);
    [_stopButton setEnabled:NO];
    [_startButton setEnabled:YES];
    [_tableView setEnabled:YES];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return (NSInteger)[_voices count];
}

- (id)tableView:(NSTableView *)tv
objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSString *voice = [_voices objectAtIndex:row];
    NSDictionary *dict = [NSSpeechSynthesizer attributesForVoice:voice];
    return [dict objectForKey:NSVoiceName];
}

- (void)tableViewSelectionDidChange:(NSNotification *)notification
{
    NSInteger row = [_tableView selectedRow];
    if (row == -1) {
        return;
    }
    
    NSString *selectedVoice = [_voices objectAtIndex:row];
    [_speechSynth setVoice:selectedVoice];
}
@end
