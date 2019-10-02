#import "ObjcAPI.h"

@implementation ObjcAPI

- (instancetype)initWithEndPoint:(ObjcEndPoint *)endPoint {
    if (self = [super init]) {
        self.endPoint = endPoint;
        self.path = @"";

        self.parameters = @{};
        self.isFormData = false;

        self.httpMethod = @"get";

        self.header = @{};
    }
    return self;
}

- (NSURLRequest *)urlRequest {
    return [[NSURLRequest alloc] initWithURL:[[NSURL alloc] initWithString:@""]];
}

@end
