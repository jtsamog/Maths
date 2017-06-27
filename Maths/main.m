//
//  main.m
//  Maths
//
//  Created by Endeavour2 on 6/27/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSInteger userAnswer;
        ScoreKeeper *scoreCount = [[ScoreKeeper alloc]init];
        
        while (gameOn) {
        AdditionQuestion *q1 = [[AdditionQuestion alloc]init];
            NSLog(@"%@", q1.question);
            
            NSString *userInput = [InputHandler getUserInput];
            
            if ([userInput isEqualToString:@"quit"]) {
                gameOn = NO;
                break;
            }
            else {
            userAnswer = [userInput intValue];
            }
            
            if (q1.answer == userAnswer) {
                NSLog(@"RIGHT!!");
                scoreCount.rightCount += 1;
                [scoreCount generateScore];
                NSLog(@"%@", [scoreCount generateScore]);
            }
            else {
                NSLog(@"WRONG!!!");
                scoreCount.wrongCount += 1;
                [scoreCount generateScore];
                NSLog(@"%@", [scoreCount generateScore]);
            }
        }
        
    }
    return 0;
}
