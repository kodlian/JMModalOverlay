//
//  JMFirstExampleView.m
//  JMModalOverlay
//
//  Created by Jérémy Marchand on 24/04/13.
//  Copyright (c) 2013 Jérémy Marchand. All rights reserved.
//

#import "JMFirstExampleView.h"
#import "Version.h"

@implementation JMFirstExampleView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    if (JMYosemiteOrSuperior) {
        [[NSColor colorWithCalibratedWhite:0.3 alpha:0.1] setFill];
        NSRectFill(self.bounds);

        NSRect separator = self.bounds;
        separator.origin.y =  separator.size.height -1;
        separator.size.height = 1;
        [[NSColor colorWithCalibratedWhite:0.0 alpha:0.1] set];
        NSRectFill(separator);
    }
    else {
        static NSGradient *backgroundGradient = nil;
        if(backgroundGradient == nil){
            backgroundGradient = [[NSGradient alloc] initWithStartingColor:[NSColor colorWithCalibratedWhite:0.573 alpha:1.000] endingColor:[NSColor colorWithCalibratedWhite:0.837 alpha:1.000]];
        }
        
        [backgroundGradient drawInRect:self.bounds angle:90];
        
        NSRect separator = self.bounds;
        separator.origin.y =  separator.size.height -1;
        separator.size.height = 1;
        [[NSColor colorWithCalibratedWhite:0.0 alpha:0.2] set];
        NSRectFill(separator);
        separator.origin.y -=1;
        [[NSColor colorWithCalibratedWhite:1.0 alpha:0.9] set];
        NSRectFill(separator);
    }
 
}
- (BOOL)allowsVibrancy{
    return YES;
}

@end
