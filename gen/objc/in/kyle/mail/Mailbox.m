//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/GuerrillaMailAPI/src/main/java/in/kyle/mail/Mailbox.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/gson/Gson.h"
#include "com/google/gson/JsonArray.h"
#include "com/google/gson/JsonElement.h"
#include "com/google/gson/JsonObject.h"
#include "in/kyle/mail/Email.h"
#include "in/kyle/mail/EmailListener.h"
#include "in/kyle/mail/EmailReceivedEvent.h"
#include "in/kyle/mail/Mailbox.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/PrintStream.h"
#include "java/io/StringWriter.h"
#include "java/lang/Exception.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Runnable.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/net/HttpURLConnection.h"
#include "java/net/URL.h"
#include "java/net/URLConnection.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/concurrent/TimeUnit.h"
#include "java/util/concurrent/atomic/AtomicBoolean.h"
#include "org/apache/commons/io/IOUtils.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface InKyleMailMailbox () {
 @public
  NSString *sessionIdCookie_;
  NSString *emailAddress_;
  JavaUtilConcurrentAtomicAtomicBoolean *active_;
  jboolean firstCheck_;
  id<InKyleMailEmailListener> emailListener_;
}

- (ComGoogleGsonJsonObject *)sendRequestWithNSString:(NSString *)url;

- (NSString *)functionWithNSString:(NSString *)function;

@end

J2OBJC_FIELD_SETTER(InKyleMailMailbox, sessionIdCookie_, NSString *)
J2OBJC_FIELD_SETTER(InKyleMailMailbox, emailAddress_, NSString *)
J2OBJC_FIELD_SETTER(InKyleMailMailbox, active_, JavaUtilConcurrentAtomicAtomicBoolean *)
J2OBJC_FIELD_SETTER(InKyleMailMailbox, emailListener_, id<InKyleMailEmailListener>)

inline NSString *InKyleMailMailbox_get_url(void);
static NSString *InKyleMailMailbox_url = @"http://api.guerrillamail.com/ajax.php";
J2OBJC_STATIC_FIELD_OBJ_FINAL(InKyleMailMailbox, url, NSString *)

inline ComGoogleGsonGson *InKyleMailMailbox_get_gson(void);
static ComGoogleGsonGson *InKyleMailMailbox_gson;
J2OBJC_STATIC_FIELD_OBJ_FINAL(InKyleMailMailbox, gson, ComGoogleGsonGson *)

__attribute__((unused)) static ComGoogleGsonJsonObject *InKyleMailMailbox_sendRequestWithNSString_(InKyleMailMailbox *self, NSString *url);

__attribute__((unused)) static NSString *InKyleMailMailbox_functionWithNSString_(InKyleMailMailbox *self, NSString *function);

@interface InKyleMailMailbox_$Lambda$1 : NSObject < JavaLangRunnable > {
 @public
  InKyleMailMailbox *this$0_;
  InKyleMailMailbox *val$instance_;
  JavaUtilConcurrentTimeUnit *val$timeUnit_;
  jlong val$checkInterval_;
}

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(InKyleMailMailbox_$Lambda$1)

__attribute__((unused)) static void InKyleMailMailbox_$Lambda$1_initWithInKyleMailMailbox_withInKyleMailMailbox_withJavaUtilConcurrentTimeUnit_withLong_(InKyleMailMailbox_$Lambda$1 *self, InKyleMailMailbox *outer$, InKyleMailMailbox *capture$0, JavaUtilConcurrentTimeUnit *capture$1, jlong capture$2);

__attribute__((unused)) static InKyleMailMailbox_$Lambda$1 *new_InKyleMailMailbox_$Lambda$1_initWithInKyleMailMailbox_withInKyleMailMailbox_withJavaUtilConcurrentTimeUnit_withLong_(InKyleMailMailbox *outer$, InKyleMailMailbox *capture$0, JavaUtilConcurrentTimeUnit *capture$1, jlong capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static InKyleMailMailbox_$Lambda$1 *create_InKyleMailMailbox_$Lambda$1_initWithInKyleMailMailbox_withInKyleMailMailbox_withJavaUtilConcurrentTimeUnit_withLong_(InKyleMailMailbox *outer$, InKyleMailMailbox *capture$0, JavaUtilConcurrentTimeUnit *capture$1, jlong capture$2);

@interface InKyleMailMailbox_$Lambda$2 : NSObject < InKyleMailEmailListener >

- (void)emailReceivedWithInKyleMailEmailReceivedEvent:(InKyleMailEmailReceivedEvent *)event;

@end

J2OBJC_STATIC_INIT(InKyleMailMailbox_$Lambda$2)

inline InKyleMailMailbox_$Lambda$2 *InKyleMailMailbox_$Lambda$2_get_instance(void);
static InKyleMailMailbox_$Lambda$2 *InKyleMailMailbox_$Lambda$2_instance;
J2OBJC_STATIC_FIELD_OBJ_FINAL(InKyleMailMailbox_$Lambda$2, instance, InKyleMailMailbox_$Lambda$2 *)

__attribute__((unused)) static void InKyleMailMailbox_$Lambda$2_init(InKyleMailMailbox_$Lambda$2 *self);

__attribute__((unused)) static InKyleMailMailbox_$Lambda$2 *new_InKyleMailMailbox_$Lambda$2_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static InKyleMailMailbox_$Lambda$2 *create_InKyleMailMailbox_$Lambda$2_init(void);

J2OBJC_INITIALIZED_DEFN(InKyleMailMailbox)

@implementation InKyleMailMailbox

- (NSString *)getSessionIdCookie {
  return sessionIdCookie_;
}

- (NSString *)getEmailAddress {
  return emailAddress_;
}

- (JavaUtilConcurrentAtomicAtomicBoolean *)getActive {
  return active_;
}

- (instancetype __nonnull)initWithLong:(jlong)checkInterval
        withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)timeUnit {
  InKyleMailMailbox_initWithLong_withJavaUtilConcurrentTimeUnit_(self, checkInterval, timeUnit);
  return self;
}

- (void)setEmailListenerWithInKyleMailEmailListener:(id<InKyleMailEmailListener>)emailListener {
  @synchronized(self) {
    JreStrongAssign(&self->emailListener_, emailListener);
  }
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  InKyleMailMailbox_mainWithNSStringArray_(args);
}

- (NSString *)initEmailAddress {
  NSString *url = InKyleMailMailbox_functionWithNSString_(self, @"get_email_address");
  ComGoogleGsonJsonObject *jsonObject = InKyleMailMailbox_sendRequestWithNSString_(self, url);
  return [((ComGoogleGsonJsonElement *) nil_chk([((ComGoogleGsonJsonObject *) nil_chk(jsonObject)) getWithNSString:@"email_addr"])) getAsString];
}

- (void)checkMail {
  NSString *url = JreStrcat("$$", InKyleMailMailbox_functionWithNSString_(self, @"check_email"), @"&seq=0");
  ComGoogleGsonJsonObject *jsonObject = InKyleMailMailbox_sendRequestWithNSString_(self, url);
  ComGoogleGsonJsonArray *list = [((ComGoogleGsonJsonObject *) nil_chk(jsonObject)) getAsJsonArrayWithNSString:@"list"];
  if (firstCheck_) {
    firstCheck_ = false;
  }
  else {
    for (ComGoogleGsonJsonElement * __strong jsonElement in nil_chk(list)) {
      ComGoogleGsonJsonObject *email = [((ComGoogleGsonJsonElement *) nil_chk(jsonElement)) getAsJsonObject];
      jint id_ = [((ComGoogleGsonJsonElement *) nil_chk([((ComGoogleGsonJsonObject *) nil_chk(email)) getWithNSString:@"mail_id"])) getAsInt];
      NSString *from = [((ComGoogleGsonJsonElement *) nil_chk([email getWithNSString:@"mail_from"])) getAsString];
      NSString *subject = [((ComGoogleGsonJsonElement *) nil_chk([email getWithNSString:@"mail_subject"])) getAsString];
      NSString *content = [((ComGoogleGsonJsonElement *) nil_chk([email getWithNSString:@"mail_excerpt"])) getAsString];
      InKyleMailEmail *received = create_InKyleMailEmail_initWithInt_withNSString_withNSString_withNSString_(id_, from, subject, content);
      InKyleMailEmailReceivedEvent *emailReceivedEvent = create_InKyleMailEmailReceivedEvent_initWithInKyleMailEmail_(received);
      @synchronized(self) {
        [((id<InKyleMailEmailListener>) nil_chk(emailListener_)) emailReceivedWithInKyleMailEmailReceivedEvent:emailReceivedEvent];
      }
    }
  }
}

- (NSString *)setEmailAddressWithNSString:(NSString *)user {
  NSString *url = JreStrcat("$$$", InKyleMailMailbox_functionWithNSString_(self, @"set_email_user"), @"&email_user=", user);
  ComGoogleGsonJsonObject *jsonObject = InKyleMailMailbox_sendRequestWithNSString_(self, url);
  JreStrongAssign(&emailAddress_, [((ComGoogleGsonJsonElement *) nil_chk([((ComGoogleGsonJsonObject *) nil_chk(jsonObject)) getWithNSString:@"email_addr"])) getAsString]);
  return emailAddress_;
}

- (ComGoogleGsonJsonObject *)sendRequestWithNSString:(NSString *)url {
  return InKyleMailMailbox_sendRequestWithNSString_(self, url);
}

- (NSString *)functionWithNSString:(NSString *)function {
  return InKyleMailMailbox_functionWithNSString_(self, function);
}

- (void)dealloc {
  RELEASE_(sessionIdCookie_);
  RELEASE_(emailAddress_);
  RELEASE_(active_);
  RELEASE_(emailListener_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilConcurrentAtomicAtomicBoolean;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x21, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 4, 5, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, 7, 1, -1, -1, -1 },
    { NULL, "LComGoogleGsonJsonObject;", 0x2, 8, 7, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x2, 9, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getSessionIdCookie);
  methods[1].selector = @selector(getEmailAddress);
  methods[2].selector = @selector(getActive);
  methods[3].selector = @selector(initWithLong:withJavaUtilConcurrentTimeUnit:);
  methods[4].selector = @selector(setEmailListenerWithInKyleMailEmailListener:);
  methods[5].selector = @selector(mainWithNSStringArray:);
  methods[6].selector = @selector(initEmailAddress);
  methods[7].selector = @selector(checkMail);
  methods[8].selector = @selector(setEmailAddressWithNSString:);
  methods[9].selector = @selector(sendRequestWithNSString:);
  methods[10].selector = @selector(functionWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "url", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
    { "gson", "LComGoogleGsonGson;", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
    { "sessionIdCookie_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "emailAddress_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "active_", "LJavaUtilConcurrentAtomicAtomicBoolean;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "firstCheck_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "emailListener_", "LInKyleMailEmailListener;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "JLJavaUtilConcurrentTimeUnit;", "LJavaIoIOException;", "setEmailListener", "LInKyleMailEmailListener;", "main", "[LNSString;", "setEmailAddress", "LNSString;", "sendRequest", "function", &InKyleMailMailbox_url, &InKyleMailMailbox_gson };
  static const J2ObjcClassInfo _InKyleMailMailbox = { "Mailbox", "in.kyle.mail", ptrTable, methods, fields, 7, 0x1, 11, 7, -1, -1, -1, -1, -1 };
  return &_InKyleMailMailbox;
}

+ (void)initialize {
  if (self == [InKyleMailMailbox class]) {
    JreStrongAssignAndConsume(&InKyleMailMailbox_gson, new_ComGoogleGsonGson_init());
    J2OBJC_SET_INITIALIZED(InKyleMailMailbox)
  }
}

@end

void InKyleMailMailbox_initWithLong_withJavaUtilConcurrentTimeUnit_(InKyleMailMailbox *self, jlong checkInterval, JavaUtilConcurrentTimeUnit *timeUnit) {
  NSObject_init(self);
  JreStrongAssign(&self->emailAddress_, [self initEmailAddress]);
  JreStrongAssignAndConsume(&self->active_, new_JavaUtilConcurrentAtomicAtomicBoolean_initWithBoolean_(true));
  self->firstCheck_ = true;
  InKyleMailMailbox *instance = self;
  [create_JavaLangThread_initWithJavaLangRunnable_(create_InKyleMailMailbox_$Lambda$1_initWithInKyleMailMailbox_withInKyleMailMailbox_withJavaUtilConcurrentTimeUnit_withLong_(self, instance, timeUnit, checkInterval)) start];
}

InKyleMailMailbox *new_InKyleMailMailbox_initWithLong_withJavaUtilConcurrentTimeUnit_(jlong checkInterval, JavaUtilConcurrentTimeUnit *timeUnit) {
  J2OBJC_NEW_IMPL(InKyleMailMailbox, initWithLong_withJavaUtilConcurrentTimeUnit_, checkInterval, timeUnit)
}

InKyleMailMailbox *create_InKyleMailMailbox_initWithLong_withJavaUtilConcurrentTimeUnit_(jlong checkInterval, JavaUtilConcurrentTimeUnit *timeUnit) {
  J2OBJC_CREATE_IMPL(InKyleMailMailbox, initWithLong_withJavaUtilConcurrentTimeUnit_, checkInterval, timeUnit)
}

void InKyleMailMailbox_mainWithNSStringArray_(IOSObjectArray *args) {
  InKyleMailMailbox_initialize();
  InKyleMailMailbox *mailbox = create_InKyleMailMailbox_initWithLong_withJavaUtilConcurrentTimeUnit_(10, JreLoadEnum(JavaUtilConcurrentTimeUnit, SECONDS));
  [mailbox setEmailAddressWithNSString:@"asd"];
  [mailbox setEmailListenerWithInKyleMailEmailListener:JreLoadStatic(InKyleMailMailbox_$Lambda$2, instance)];
}

ComGoogleGsonJsonObject *InKyleMailMailbox_sendRequestWithNSString_(InKyleMailMailbox *self, NSString *url) {
  JavaNetHttpURLConnection *httpURLConnection = (JavaNetHttpURLConnection *) cast_chk([create_JavaNetURL_initWithNSString_(url) openConnection], [JavaNetHttpURLConnection class]);
  [((JavaNetHttpURLConnection *) nil_chk(httpURLConnection)) setRequestPropertyWithNSString:@"User-Agent" withNSString:@"Mozilla/5.0"];
  if (self->sessionIdCookie_ != nil) {
    [httpURLConnection setRequestPropertyWithNSString:@"Cookie" withNSString:JreStrcat("$$", @"PHPSESSID=", self->sessionIdCookie_)];
  }
  else {
    id<JavaUtilMap> headerFields = [httpURLConnection getHeaderFields];
    if ([((id<JavaUtilMap>) nil_chk(headerFields)) containsKeyWithId:@"Set-Cookie"]) {
      for (NSString * __strong cookie in nil_chk([headerFields getWithId:@"Set-Cookie"])) {
        if ([((NSString *) nil_chk(cookie)) java_hasPrefix:@"PHPSESSID"]) {
          JreStrongAssign(&self->sessionIdCookie_, [((NSString *) nil_chk([cookie java_substring:[cookie java_indexOfString:@"="] + 1])) java_trim]);
          break;
        }
      }
    }
  }
  JavaIoStringWriter *response = create_JavaIoStringWriter_init();
  OrgApacheCommonsIoIOUtils_copy__WithJavaIoInputStream_withJavaIoWriter_([httpURLConnection getInputStream], response);
  return [((ComGoogleGsonGson *) nil_chk(InKyleMailMailbox_gson)) fromJsonWithNSString:[response description] withIOSClass:ComGoogleGsonJsonObject_class_()];
}

NSString *InKyleMailMailbox_functionWithNSString_(InKyleMailMailbox *self, NSString *function) {
  return JreStrcat("$$$", InKyleMailMailbox_url, @"?f=", function);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(InKyleMailMailbox)

@implementation InKyleMailMailbox_$Lambda$1

- (void)run {
  while ([((JavaUtilConcurrentAtomicAtomicBoolean *) nil_chk(this$0_->active_)) get]) {
    @try {
      @synchronized(val$instance_) {
        @try {
          [this$0_ checkMail];
        }
        @catch (JavaIoIOException *e) {
          [e printStackTrace];
        }
      }
    }
    @catch (JavaLangException *e) {
      [e printStackTrace];
    }
    @try {
      JavaLangThread_sleepWithLong_([((JavaUtilConcurrentTimeUnit *) nil_chk(val$timeUnit_)) toMillisWithLong:val$checkInterval_]);
    }
    @catch (JavaLangInterruptedException *ignored) {
    }
  }
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$instance_);
  RELEASE_(val$timeUnit_);
  [super dealloc];
}

@end

void InKyleMailMailbox_$Lambda$1_initWithInKyleMailMailbox_withInKyleMailMailbox_withJavaUtilConcurrentTimeUnit_withLong_(InKyleMailMailbox_$Lambda$1 *self, InKyleMailMailbox *outer$, InKyleMailMailbox *capture$0, JavaUtilConcurrentTimeUnit *capture$1, jlong capture$2) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$instance_, capture$0);
  JreStrongAssign(&self->val$timeUnit_, capture$1);
  self->val$checkInterval_ = capture$2;
  NSObject_init(self);
}

InKyleMailMailbox_$Lambda$1 *new_InKyleMailMailbox_$Lambda$1_initWithInKyleMailMailbox_withInKyleMailMailbox_withJavaUtilConcurrentTimeUnit_withLong_(InKyleMailMailbox *outer$, InKyleMailMailbox *capture$0, JavaUtilConcurrentTimeUnit *capture$1, jlong capture$2) {
  J2OBJC_NEW_IMPL(InKyleMailMailbox_$Lambda$1, initWithInKyleMailMailbox_withInKyleMailMailbox_withJavaUtilConcurrentTimeUnit_withLong_, outer$, capture$0, capture$1, capture$2)
}

InKyleMailMailbox_$Lambda$1 *create_InKyleMailMailbox_$Lambda$1_initWithInKyleMailMailbox_withInKyleMailMailbox_withJavaUtilConcurrentTimeUnit_withLong_(InKyleMailMailbox *outer$, InKyleMailMailbox *capture$0, JavaUtilConcurrentTimeUnit *capture$1, jlong capture$2) {
  J2OBJC_CREATE_IMPL(InKyleMailMailbox_$Lambda$1, initWithInKyleMailMailbox_withInKyleMailMailbox_withJavaUtilConcurrentTimeUnit_withLong_, outer$, capture$0, capture$1, capture$2)
}

J2OBJC_INITIALIZED_DEFN(InKyleMailMailbox_$Lambda$2)

@implementation InKyleMailMailbox_$Lambda$2

- (void)emailReceivedWithInKyleMailEmailReceivedEvent:(InKyleMailEmailReceivedEvent *)event {
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"Got email: ", [((NSString *) nil_chk([((InKyleMailEmail *) nil_chk([((InKyleMailEmailReceivedEvent *) nil_chk(event)) getEmail])) description])) java_replace:@"\n" withSequence:@"\\n"])];
}

+ (void)initialize {
  if (self == [InKyleMailMailbox_$Lambda$2 class]) {
    JreStrongAssignAndConsume(&InKyleMailMailbox_$Lambda$2_instance, new_InKyleMailMailbox_$Lambda$2_init());
    J2OBJC_SET_INITIALIZED(InKyleMailMailbox_$Lambda$2)
  }
}

@end

void InKyleMailMailbox_$Lambda$2_init(InKyleMailMailbox_$Lambda$2 *self) {
  NSObject_init(self);
}

InKyleMailMailbox_$Lambda$2 *new_InKyleMailMailbox_$Lambda$2_init() {
  J2OBJC_NEW_IMPL(InKyleMailMailbox_$Lambda$2, init)
}

InKyleMailMailbox_$Lambda$2 *create_InKyleMailMailbox_$Lambda$2_init() {
  J2OBJC_CREATE_IMPL(InKyleMailMailbox_$Lambda$2, init)
}
