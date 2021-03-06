//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/GuerrillaMail/src/main/java/in/kyle/mail/EmailReceivedEvent.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "in/kyle/mail/Email.h"
#include "in/kyle/mail/EmailReceivedEvent.h"
#include "java/util/Objects.h"

@interface InKyleMailEmailReceivedEvent () {
 @public
  InKyleMailEmail *email_;
}

@end

J2OBJC_FIELD_SETTER(InKyleMailEmailReceivedEvent, email_, InKyleMailEmail *)

@implementation InKyleMailEmailReceivedEvent

- (instancetype __nonnull)initWithInKyleMailEmail:(InKyleMailEmail *)email {
  InKyleMailEmailReceivedEvent_initWithInKyleMailEmail_(self, email);
  return self;
}

- (InKyleMailEmail *)getEmail {
  return email_;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (o == nil || [self java_getClass] != [o java_getClass]) return false;
  InKyleMailEmailReceivedEvent *that = (InKyleMailEmailReceivedEvent *) cast_chk(o, [InKyleMailEmailReceivedEvent class]);
  return JavaUtilObjects_equalsWithId_withId_(email_, that->email_);
}

- (NSUInteger)hash {
  return JavaUtilObjects_hash__WithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ email_ } count:1 type:NSObject_class_()]);
}

- (void)dealloc {
  RELEASE_(email_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LInKyleMailEmail;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInKyleMailEmail:);
  methods[1].selector = @selector(getEmail);
  methods[2].selector = @selector(isEqual:);
  methods[3].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "email_", "LInKyleMailEmail;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LInKyleMailEmail;", "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _InKyleMailEmailReceivedEvent = { "EmailReceivedEvent", "in.kyle.mail", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_InKyleMailEmailReceivedEvent;
}

@end

void InKyleMailEmailReceivedEvent_initWithInKyleMailEmail_(InKyleMailEmailReceivedEvent *self, InKyleMailEmail *email) {
  NSObject_init(self);
  JreStrongAssign(&self->email_, email);
}

InKyleMailEmailReceivedEvent *new_InKyleMailEmailReceivedEvent_initWithInKyleMailEmail_(InKyleMailEmail *email) {
  J2OBJC_NEW_IMPL(InKyleMailEmailReceivedEvent, initWithInKyleMailEmail_, email)
}

InKyleMailEmailReceivedEvent *create_InKyleMailEmailReceivedEvent_initWithInKyleMailEmail_(InKyleMailEmail *email) {
  J2OBJC_CREATE_IMPL(InKyleMailEmailReceivedEvent, initWithInKyleMailEmail_, email)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(InKyleMailEmailReceivedEvent)
