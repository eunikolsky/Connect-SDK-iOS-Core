#import <XCTest/XCTestObserver.h>

@interface GcovTestObserver : XCTestObserver
@end

@implementation GcovTestObserver

#ifdef DEBUG_CCOV
- (void)stopObserving
{
    [super stopObserving];
    extern void __gcov_flush(void);
    __gcov_flush();
}
#endif

@end