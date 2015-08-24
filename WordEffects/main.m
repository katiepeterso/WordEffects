//
//  main.m
//  WordEffects
//
//  Created by Katherine Peterson on 2015-08-24.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 255 unit long array of characters
        char inputChars[255];
        
        printf("Input a string: ");
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
        // print as a c string
        printf("Your string is %s", inputChars);
        
        // convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        // print NSString object
        NSLog(@"Input was: %@", inputString);
        
        //Operation 1
        NSString *uppercaseString = [inputString uppercaseString];
        NSLog(@"%@", uppercaseString);
        
        //Operation 2
        NSString *lowercaseString = [inputString lowercaseString];
        NSLog(@"%@", lowercaseString);
        
        //Operation 3
        float numericValue = [inputString floatValue];
        NSLog(@"%f", numericValue);
 
      
        //Operation 4
        NSString *tempString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            //The inputString is coming in with a new line at the end, so I am removing the new line before adding the canadianString
        NSString *canadianString = [tempString stringByAppendingFormat:@", eh?"];
        NSLog(@"%@", canadianString);
        
        //Operation 5
        if ([tempString hasSuffix:@"?"]) {
            NSLog(@"I don't know.");
        }
        else if ([tempString hasSuffix:@"!"]) {
            NSLog(@"Whoa, calm down.");
        }
    }
    return 0;
}
