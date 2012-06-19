//
//  View.m
//  Jun21
//
//  Created by Matthew Fong on 6/18/12.
//  Copyright (c) 2012 Goldman Sachs. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
- (void) drawRect: (CGRect) rect
{
    // Drawing code
    // Drawing code
    CGRect bounds = self.bounds;
    CGFloat radius = .5 * bounds.size.width;	//in pixels
    
    /*
     Create the invisible square that will surround the circle.
     Place the upper left corner of the square at the upper left corner of
     the View.  bounds.origin.x and bounds.origin.y are the coordinates of
     the upper left corner of the View.
     */
    CGRect r = CGRectMake(
                          bounds.origin.x,
                          bounds.origin.y,
                          2 * radius,
                          2 * radius
                          );
    
    CGContextRef c = UIGraphicsGetCurrentContext();
    CGContextBeginPath(c); //unnecessary here: the path is already empty.
    CGContextAddEllipseInRect(c, r);
    CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 0.1);	//red, opaque
    CGContextFillPath(c);
}



@end
