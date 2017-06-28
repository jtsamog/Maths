//
//  AdditionQuestion.m
//  Maths
//
//  Created by Endeavour2 on 6/27/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion
-(instancetype)init{
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(100);
        _rightValue = arc4random_uniform(100);
        _question = [NSString stringWithFormat:@"What is %li + %li = ?", _leftValue, _rightValue];
        _answer = _leftValue + _rightValue;
        _startTime = [NSDate date];
    }
    return self;
}

+(NSString *)generateRandomQuestion{
    return nil;
}

//overiding getter
-(NSInteger)answer{
    _endTime = [NSDate date];
    return _answer;
}

 //to calculate time diff between startTime and endTime
-(NSTimeInterval)answerTime{
     NSTimeInterval answerTime = [self.startTime timeIntervalSinceDate:self.endTime];
    return answerTime;
}


@end
