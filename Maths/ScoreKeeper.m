//
//  ScoreKeeper.m
//  Maths
//
//  Created by Endeavour2 on 6/27/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper
-(instancetype)init{
    self = [super init];
    if (self) {
        _rightCount = 0;
        _wrongCount = 0;
    }
    return self;
}

-(NSString *)generateScore{
    return [NSString stringWithFormat:@"Score: %2f right, %2f wrong -----%2f%%", self.rightCount, self.wrongCount, self.rightCount*100/(self.rightCount + self.wrongCount)];
}

@end
