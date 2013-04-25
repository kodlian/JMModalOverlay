//
//  JMFirstExampleViewController.h
//  JMModalOverlay
//
//  Created by Jérémy Marchand on 23/04/13.
//  Copyright (c) 2013 Jérémy Marchand. All rights reserved.
//

#import <Cocoa/Cocoa.h>
typedef void(^JMFirstExampleViewControllerCompletion)(BOOL confirmed);
@interface JMFirstExampleViewController : NSViewController
@property(copy)JMFirstExampleViewControllerCompletion completion;
- (IBAction)confirm:(id)sender;
- (IBAction)cancel:(id)sender;



@end
