//
//  InputHandler.m
//  Maths
//
//  Created by Endeavour2 on 6/27/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
+(NSString *)getUserInput{
    
    char userChars[255];
    fgets(userChars, 255, stdin);
    
    return [[NSString stringWithCString:userChars encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
}


@end
