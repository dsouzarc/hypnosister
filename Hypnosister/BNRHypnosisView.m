//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Ryan D'souza on 2/1/15.
//  Copyright (c) 2015 Ryan D'souza. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

//@property (nonatomic) CGRect frame;

// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGRect bounds = self.bounds;
    
    CGPoint center;
    center.x = (bounds.origin.x + bounds.size.width) / 2.0;
    center.y = (bounds.origin.y + bounds.size.height) / 2.0;
 
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    for(float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        
        //'Picks' the pencil up and moves it elsewhere to continue drawing
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        
        [path addArcWithCenter:center radius:currentRadius
                    startAngle:0 endAngle:2 * M_PI clockwise:true];
    }
    
    path.lineWidth = 10.0;
    [path stroke];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if(self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

@end
