//
//  KvcFunAppDelegate.m
//  KvcFun
//
//  Created by Matt Rogers on 7/4/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "KvcFunAppDelegate.h"

@implementation KvcFunAppDelegate

@synthesize fido;

- (id)init
{
    self = [super init];
    if (self) {
        [self setValue:[NSNumber numberWithInt:5] forKey:@"fido"];
        NSNumber *n = [self valueForKey:@"fido"];
        NSLog(@"fido = %@", n);
    }
    
    return self;
}

- (IBAction)incrementFido:(id)sender
{
    [self willChangeValueForKey:@"fido"];
    fido++;
    [self didChangeValueForKey:@"fido"];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

@end
