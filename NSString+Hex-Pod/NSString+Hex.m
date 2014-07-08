//
//  NSString+Hex.m
//  NSString+Hex-Demo
//
//  Created by Benoit Sarrazin on 2014-07-08.
//  Copyright (c) 2014 Berzerker Design. All rights reserved.
//

#import "NSString+Hex.h"

#pragma mark - Implementation

@implementation NSString (Hex)

+ (NSData *)hexValueFromString:(NSString *)string {
    return [NSString _scanHexString:string];
}

- (NSData *)hexValue {
    return [NSString _scanHexString:self];
}

+ (NSData *)_scanHexString:(NSString *)string {
    // [BS] Jul 8, 2014
    // Create a character set that contains everything except ""ABCDEF0123456789".
    NSMutableCharacterSet *characterSet = [NSMutableCharacterSet characterSetWithCharactersInString:@"abcdefABCDEF"];
    [characterSet formUnionWithCharacterSet:[NSCharacterSet decimalDigitCharacterSet]];
    [characterSet invert];
    
    // [BS] Jul 8, 2014
    // Clean the string so it contains only alphanumeric characters.
    NSString *hexString = [string stringByTrimmingCharactersInSet:characterSet];
    
    // [BS] Jul 8, 2014
    // If the string has an odd number of characters, consider it invalid.
    if (hexString.length % 2 != 0) {
        return nil;
    }
    
    // [BS] Jul 8, 2014
    // Scan the hex string and append it
    NSMutableData *data = nil;
    for (int index = 0; index + 2 <= hexString.length; index += 2)
    {
        NSRange range = NSMakeRange(index, 2);
        NSString *byteString = [hexString substringWithRange:range];
        NSScanner *scanner = [NSScanner scannerWithString:byteString];
        unsigned int intValue;
        if ([scanner scanHexInt:&intValue])
            if (!data)
                data = [[NSMutableData alloc] init];
            [data appendBytes:&intValue length:1];
    }
    return [data copy];
}

@end
