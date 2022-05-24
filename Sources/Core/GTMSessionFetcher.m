#import "FakeGTMSessionFetcher/GTMSessionFetcher.h"
@implementation GTMSessionFetcher
-(void) sayHello {
    NSLog(@"Say hello");
}
-(void) sayHelloMyName {
    NSLog(@"Say hello to my name is:%@",self.myName);
}
@end
