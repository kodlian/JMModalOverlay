//
//  JMFirstExampleViewController.m
//  JMModalOverlay
//
//  Created by Jérémy Marchand on 23/04/13.
//  Copyright (c) 2013 Jérémy Marchand. All rights reserved.
//

#import "JMFirstExampleViewController.h"

@interface JMFirstExampleViewController ()

@end

@implementation JMFirstExampleViewController
- (NSString *)nibName{
    return @"JMFirstExampleViewController";
}
- (IBAction)confirm:(id)sender {
    _completion(YES);
}
- (IBAction)cancel:(id)sender {
    _completion(NO);
}
@end
