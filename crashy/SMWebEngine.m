//
//  SMWebEngine.m
//  crashy
//
//  Created by Cesare Rocchi on 2/17/13.
//  Copyright (c) 2013 Cesare Rocchi. All rights reserved.
//

#import "SMWebEngine.h"

@implementation SMWebEngine

- (id) init {

    self = [super init];
    
    if (self) {
    
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(loadMore)
                                                     name:LOAD_MORE_NOTIFICATION
                                                   object:nil];
        
    }
    
    return self;
    
}

@end
