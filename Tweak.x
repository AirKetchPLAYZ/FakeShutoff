//#import <libactivator.h>
#import <UIKit/UIKit.h>
#import <CoreGraphics/CGGeometry.h>
BOOL toggle = NO;
UIView* view;
/*
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
*/
%ctor{
    //fakeShutoffInstance = [[FakeShutoff alloc] init];
    //[[LAActivator sharedInstance] registerListener:fakeShutoffInstance
    //                                       forName:@"FakeShutoff"];
    view = [[UIView alloc] initWithFrame:CGRectMake(0,
                                                                0,
                                                                [[UIScreen mainScreen] bounds].size.width,
                                                                [[UIScreen mainScreen] bounds].size.height)];
    [view setBackgroundColor:[UIColor blackColor]];
    view.userInteractionEnabled = YES;
    view.alpha = 1;
}
