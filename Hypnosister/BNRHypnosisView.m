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
    
    //Largest that will fit in view
    float radius = (MIN(bounds.size.width, bounds.size.height) / 2.0);
    
    [[UIColor lightGrayColor] setStroke];
    
    UIBezierPath *pathToFollow = [[UIBezierPath alloc] init];
    [pathToFollow addArcWithCenter:center radius:radius startAngle:0 endAngle:2 * M_PI clockwise:true];
    
    pathToFollow.lineWidth = 10;
    
    //Draw it
    [pathToFollow stroke];
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
