//
//  main.m
//  SecondMostFrequestCharacterFromAString
//
//  Created by Bollisetty Bala Baskar on 30/03/21.
//

#import <Foundation/Foundation.h>
#include <stdio.h>
#define NO_OF_CHARS 256

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        char str[] = "Hello World";//"geeksforgeeks";
        // count number of occurrences of every character.
        int count[NO_OF_CHARS] = {0}, i;
        for (i=0; str[i]; i++)
            (count[str[i]])++;
      
        // Traverse through the count[] and find second highest element.
        int first = 0, second = 0;
        for (i = 0; i < NO_OF_CHARS; i++)
        {
            /* If current element is smaller than first then update both
              first and second */
            if (count[i] > count[first])
            {
                second = first;
                first = i;
            }
      
            /* If count[i] is in between first and second then update second  */
            else if (count[i] > count[second] &&
                     count[i] != count[first])
                second = i;
        }
      
//          char res = getSecondMostFreq(str);
          if (second != '\0')
             printf("Second most frequent char is %c\n", second);
          else
             printf("No second most frequent character");
    }
    return 0;
}


//
//// C function to find the second most frequent character
//// in a given string 'str'
//char getSecondMostFreq(char *str)
//{
//    // count number of occurrences of every character.
//    int count[NO_OF_CHARS] = {0}, i;
//    for (i=0; str[i]; i++)
//        (count[str[i]])++;
//
//    // Traverse through the count[] and find second highest element.
//    int first = 0, second = 0;
//    for (i = 0; i < NO_OF_CHARS; i++)
//    {
//        /* If current element is smaller than first then update both
//          first and second */
//        if (count[i] > count[first])
//        {
//            second = first;
//            first = i;
//        }
//
//        /* If count[i] is in between first and second then update second  */
//        else if (count[i] > count[second] &&
//                 count[i] != count[first])
//            second = i;
//    }
//
//    return second;
//}
