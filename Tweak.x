#import <libactivator.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIView.h>
#import <CoreGraphics/CGGeometry.h>
BOOL toggle = NO;
UIView *view;

@interface FakeShutoff : NSObject <LAListener>
@end

@implementation FakeShutoff

- (void)activator:
      (LAActivator *)activator
      receiveEvent:(LAEvent *)event
      forListenerName:(NSString *)listenerName
  {
    toggle = !toggle;

  }

@end

static FakeShutoff *fakeShutoffInstance;

%ctor{
    //fakeShutoffInstance = [[FakeShutoff alloc] init];
    //[[LAActivator sharedInstance] registerListener:fakeShutoffInstance
    //                                       forName:@"FakeShutoff"];


}
