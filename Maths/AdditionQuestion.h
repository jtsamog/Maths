//
//  AdditionQuestion.h
//  Maths
//
//  Created by Endeavour2 on 6/27/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject
@property (nonatomic, strong) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic) NSInteger leftValue;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;




+(NSString *)generateRandomQuestion;
-(NSInteger)answer;
-(NSTimeInterval)answerTime;
    
    
@end
