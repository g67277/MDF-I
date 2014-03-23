//
//  WebCalls.m
//  Feed Me 2
//
//  Created by Nazir Shuqair on 3/23/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "WebCalls.h"

@implementation WebCalls

- (NSURLRequest *) urlRequest{
    
    NSURL* url = [[NSURL alloc] initWithString:@"https://www.google.com/search?q=make+me+hungry&source=lnms&tbm=isch&sa=X&ei=GBcvU7LDNePD0QHopIDADw&sqi=2&ved=0CAYQ_AUoAQ&biw=1600&bih=894&dpr=0.9#q=delicious+food&spell=1&tbm=isch"];
    NSURLRequest* request = [[NSURLRequest alloc] initWithURL:url];
   
    return request;
}



@end
