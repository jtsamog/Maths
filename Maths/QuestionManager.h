//
//  QuestionManager.h
//  Maths
//
//  Created by Endeavour2 on 6/28/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
//@class AdditionQuestion;

@interface QuestionManager : NSObject
@property (nonatomic, strong) NSMutableArray *questions;
//@property (nonatomic) AdditionQuestion *question;

-(NSString *)timeOutput;

-(void) addQuestion:(AdditionQuestion *)question;

@end

