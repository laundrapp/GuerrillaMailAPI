//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/GuerrillaMailAPI/src/main/java/in/kyle/mail/EmailReceivedEvent.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_InKyleMailEmailReceivedEvent")
#ifdef RESTRICT_InKyleMailEmailReceivedEvent
#define INCLUDE_ALL_InKyleMailEmailReceivedEvent 0
#else
#define INCLUDE_ALL_InKyleMailEmailReceivedEvent 1
#endif
#undef RESTRICT_InKyleMailEmailReceivedEvent

#if !defined (InKyleMailEmailReceivedEvent_) && (INCLUDE_ALL_InKyleMailEmailReceivedEvent || defined(INCLUDE_InKyleMailEmailReceivedEvent))
#define InKyleMailEmailReceivedEvent_

@class InKyleMailEmail;

/*!
 @brief Created by Kyle on 11/4/2015.
 */
@interface InKyleMailEmailReceivedEvent : NSObject

#pragma mark Public

- (instancetype)initWithInKyleMailEmail:(InKyleMailEmail *)email;

- (jboolean)isEqual:(id)o;

- (InKyleMailEmail *)getEmail;

- (NSUInteger)hash;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(InKyleMailEmailReceivedEvent)

FOUNDATION_EXPORT void InKyleMailEmailReceivedEvent_initWithInKyleMailEmail_(InKyleMailEmailReceivedEvent *self, InKyleMailEmail *email);

FOUNDATION_EXPORT InKyleMailEmailReceivedEvent *new_InKyleMailEmailReceivedEvent_initWithInKyleMailEmail_(InKyleMailEmail *email) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT InKyleMailEmailReceivedEvent *create_InKyleMailEmailReceivedEvent_initWithInKyleMailEmail_(InKyleMailEmail *email);

J2OBJC_TYPE_LITERAL_HEADER(InKyleMailEmailReceivedEvent)

#endif

#pragma pop_macro("INCLUDE_ALL_InKyleMailEmailReceivedEvent")