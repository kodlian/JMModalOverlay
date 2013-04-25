//
//  JMAppDelegate.h
//  Demo
//
//  Created by Jérémy Marchand on 23/04/13.
//  Copyright (c) 2013 Jérémy Marchand. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <JMModalOverlay/JMModalOverlay.h>
#import "JMFirstExampleViewController.h"

@interface JMAppDelegate : NSObject <NSApplicationDelegate, JMModalOverlayDelegate>
@property (unsafe_unretained) IBOutlet JMFirstExampleViewController *firstExampleViewController;
@property (unsafe_unretained) IBOutlet NSViewController *secondExampleViewController;

@property (weak) IBOutlet JMModalOverlay *modalOverlay;
@property (assign) IBOutlet NSWindow *window;
- (IBAction)showExemple1:(id)sender;
- (IBAction)showExemple2:(id)sender;
- (IBAction)foo:(id)sender;

@end
