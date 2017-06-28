//
//  QuestionManager.m
//  Maths
//
//  Created by Endeavour2 on 6/28/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager
-(instancetype)init{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addQuestion:(AdditionQuestion *)question{
    [_questions addObject:question];
}

-(NSString *)timeOutput{
    
    NSTimeInterval totalTime = 0;
    NSTimeInterval averageTime = 0;
    
    float counter = 1;
    for (AdditionQuestion *question in self.questions) {
//        totalTime += [question answerTime];
        averageTime = totalTime/counter;
        counter ++;
        
        
    }
    
    return [NSString stringWithFormat:@"total time: %0.2f, average time: %0.2f", totalTime, averageTime ];
}

@end
