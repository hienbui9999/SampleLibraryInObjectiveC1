#import "FakeGTMSessionFetcher/GTMSessionFetcherLogViewController.h"

@implementation GTMSessionFetcherLogViewController
-(void) sayHelloAgainAndAgain {
    NSLog(@"Say hello again and again called");
}
-(GTMSessionFetcher*) testFunc {
    GTMSessionFetcher * ret = [[GTMSessionFetcher alloc] init];
    ret.myName = @"NGuyen Van A";
    [ret sayHelloMyName];
    return ret;
}
@end
