//
//  RadarViewPortView.m
//  ARKitDemo
//
//  Created by Ed Rackham (a1phanumeric) 2013
//  Based on mixare's implementation.
//

#import "RadarViewPortView.h"
#define radians(x) (M_PI * (x) / 180.0)

@implementation RadarViewPortView{
    float _newAngle;
}

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        _newAngle               = 45.0;
        _referenceAngle         = 247.5;
        self.backgroundColor    = [UIColor clearColor];
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect{
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(contextRef, 0, 255, 115, 0.3);
    CGContextMoveToPoint(contextRef, RADIUS, RADIUS);
    CGContextAddArc(contextRef, RADIUS, RADIUS, RADIUS,  radians(_referenceAngle), radians(_referenceAngle+_newAngle),0);
    CGContextClosePath(contextRef);
    CGContextFillPath(contextRef);
}


@end