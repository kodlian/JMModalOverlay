//
//  JMAppDelegate.m
//  Demo
//
//  Created by Jérémy Marchand on 23/04/13.
//  Copyright (c) 2013 Jérémy Marchand. All rights reserved.
//

#import "JMAppDelegate.h"

@implementation JMAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification{
   
    _firstExampleViewController.completion = ^(BOOL confirmed){
        if(confirmed){
            NSLog(@"confirmed");
        }
        else{
            NSLog(@"canceled");
        }
        
        [_modalOverlay close];
    };
}

- (IBAction)showExemple1:(id)sender {
    _modalOverlay.contentViewController = _firstExampleViewController;
    _modalOverlay.animates = YES;
    _modalOverlay.animationDirection = JMModalOverlayDirectionBottom;
    _modalOverlay.shouldOverlayTitleBar = YES;
    _modalOverlay.shouldCloseWhenClickOnBackground = NO;
    _modalOverlay.appearance = [NSAppearance appearanceNamed:NSAppearanceNameVibrantDark];
    _modalOverlay.backgroundColor = [NSColor colorWithCalibratedWhite:0.0 alpha:0.0];
    [_modalOverlay showInWindow:self.window];
}

- (IBAction)showExemple2:(id)sender {
    _modalOverlay.contentViewController = _secondExampleViewController;
    _modalOverlay.animates = YES;
    _modalOverlay.animationDirection = JMModalOverlayDirectionNone;
    _modalOverlay.shouldOverlayTitleBar = NO;
    _modalOverlay.backgroundColor = [NSColor colorWithCalibratedRed:0.986 green:0.000 blue:0.00 alpha:0.300];
    _modalOverlay.shouldCloseWhenClickOnBackground = YES;
    _modalOverlay.appearance = [NSAppearance appearanceNamed:NSAppearanceNameVibrantLight];

    [_modalOverlay showInWindow:self.window];

}

- (IBAction)foo:(id)sender {
    NSLog(@"foo");
}


#pragma mark -
#pragma mark notification
- (BOOL)modalOverlayShouldClose:(JMModalOverlay *)modalOverlay{
    NSLog(@"modalOverlayShouldClose => YES");

    return YES;
}
- (void)modalOverlayWillShow:(NSNotification *)notification{
    NSLog(@"WillShow");
}
- (void)modalOverlayDidShow:(NSNotification *)notification{
    NSLog(@"DidShow");
}
- (void)modalOverlayWillClose:(NSNotification *)notification{
    NSLog(@"WillClose");
}
- (void)modalOverlayDidClose:(NSNotification *)notification{
    NSLog(@"DidClose");
}

@end
