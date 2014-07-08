//
//  NSString+Hex.h
//  NSString+Hex-Demo
//
//  Created by Benoit Sarrazin on 2014-07-08.
//  Copyright (c) 2014 Berzerker Design. All rights reserved.
//

@import Foundation;

/**
 *  This cateogory adds HEX utilities on NSString.
 */
@interface NSString (Hex)

/**
 *  Returns the hexadecimal value as an instance of `NSData`.
 *
 *  @param string The string used to return the hexadecimal value.
 *
 *  @return An `NSData` instance representing the hexadecimal string parameter.
 */
+ (NSData *)hexValueFromString:(NSString *)string;

/**
 *  Returns the hexadecimal value as an instance of `NSData`.
 *
 *  @return An `NSData` instance representing this instance of `NSString`.
 */
- (NSData *)hexValue;

@end
