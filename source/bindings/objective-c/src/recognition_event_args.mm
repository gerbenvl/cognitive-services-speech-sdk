//
// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE.md file in the project root for full license information.
//

#import "recognition_event_args_private.h"


@implementation RecognitionEventArgs

- (instancetype)init:(RecognitionEventType)eventType :(NSString *)sessionId  :(NSUInteger)offset
{
    self = [super init];
    
    _sessionId = sessionId;
    _eventType = eventType;
    _offset = offset;
   
    return self;
}

- (instancetype)initWithHandle :(RecognitionEventType)eventType :(const SpeechImpl::RecognitionEventArgs&) eventArgsHandle
{
    self = [super init];
    
    _eventType = eventType;
    _sessionId = [NSString stringWithString:eventArgsHandle.SessionId];
    _offset = eventArgsHandle.Offset;
    
    return self;
}


@end

