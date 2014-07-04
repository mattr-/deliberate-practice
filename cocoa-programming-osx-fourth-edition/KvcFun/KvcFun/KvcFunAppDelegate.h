//
//  KvcFunAppDelegate.h
//  KvcFun
//
//  Created by Matt Rogers on 7/4/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface KvcFunAppDelegate : NSObject <NSApplicationDelegate>
{
    int fido;
}

- (IBAction)incrementFido:(id)sender;


@property (assign) IBOutlet NSWindow *window;
@property (readwrite, assign) int fido;

@end
