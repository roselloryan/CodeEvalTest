//
//  main.m
//  CodeEvalTest


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
//        NSString *testString = @"2 5 90";
        
//        for (NSInteger i = 0; i < testString.length; i++) {
//            
//        char c = [testString characterAtIndex:i];
//        
//        NSLog(@"\n%c\n\n", c);
//        }
        
//            for (NSInteger i = 0; i < testString.length; i++) {
//    
//                char c = [testString characterAtIndex:i];
//                char space = ' ';
//                
//                if (c != space) {
//                    NSLog(@"\n%c\n\n", c);
//                }
//            }
        
        NSString *testString = @"3 5 65";

        NSArray *seperatedString = [testString componentsSeparatedByString:@" "];
        
        NSInteger firstInt = [seperatedString[0]integerValue];
        NSInteger secondInt = [seperatedString[1]integerValue];
        NSInteger thirdInt = [seperatedString[2]integerValue];
        
        NSMutableString *solutionString =  [[NSMutableString alloc]init];
        
        NSLog(@"\nfirst number: %lu\nsecond number %lu\nthird number: %lu", firstInt,secondInt, thirdInt);
        
        for (NSInteger i = 1; i < thirdInt + 1; i++) {
            
            if (i % firstInt == 0) {
                if (i % secondInt == 0) {
                    [solutionString appendString:@"FB "];
                }
                else {
                [solutionString appendString:@"F "];
                }
            }
            else if (i % secondInt == 0) {
                [solutionString appendString:@"B "];
            }
            else {
                [solutionString appendString:[NSString stringWithFormat:@"%lu ", i]];
            }
        }
        
        NSLog(@"\nsolution string before last space removal: %@\n\n", solutionString);
        NSLog(@"\nsolutionString.length: %lu\n\n", solutionString.length);
      
        NSRange trailingSpaceRange = NSMakeRange(solutionString.length - 1, 1);
        [solutionString deleteCharactersInRange:trailingSpaceRange];
        
        NSLog(@"%@", solutionString);
        
    }
    return 0;
}
