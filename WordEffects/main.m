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
        char inputNumber[255];
        for (;;) {
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            printf("Input an operation number 1-6: ");
            fgets(inputNumber, 255, stdin);
            
            // convert char arrays to an NSString objects
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            NSString *operationWithNewLine = [NSString stringWithUTF8String:inputNumber];
            
            // print NSString object
            NSLog(@"Input was: %@ for operation: %@", inputString, operationWithNewLine);
            
            //Remove new line from the end of inputString
            NSString *trimmedString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            NSString *operation = [operationWithNewLine stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            if ([operation isEqualToString:@"1"]) {
                //Operation 1
                NSString *uppercaseString = [inputString uppercaseString];
                NSLog(@"%@", uppercaseString);
            }
            else if ([operation isEqualToString:@"2"]) {
                //Operation 2
                NSString *lowercaseString = [inputString lowercaseString];
                NSLog(@"%@", lowercaseString);
            }
            else if ([operation isEqualToString:@"3"]) {
                //Operation 3
                NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
                nf.numberStyle = NSNumberFormatterDecimalStyle;
                NSNumber *numberObj = [nf numberFromString:trimmedString];
                
                if (numberObj) {
                    int numericValue = [inputString intValue];
                    NSLog(@"%d", numericValue);
                } else {
                    NSLog(@"You have to input a number to use this operation.");
                }
                
            }
            else if ([operation isEqualToString:@"4"]) {
                //Operation 4
                NSString *canadianString = [trimmedString stringByAppendingFormat:@", eh?"];
                NSLog(@"%@", canadianString);
            }
            else if ([operation isEqualToString:@"5"]) {
                //Operation 5
                if ([trimmedString hasSuffix:@"?"]) {
                    NSLog(@"I don't know.");
                }
                else if ([trimmedString hasSuffix:@"!"]) {
                    NSLog(@"Whoa, calm down.");
                }        }
            else if ([operation isEqualToString:@"6"]) {
                //Operation 6
                NSString *noSpaces = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"%@", noSpaces);
            }
            else {
                NSLog(@"You must enter a number 1-6 to perform an operation");
            }

        }
        
    }
    return 0;
}
