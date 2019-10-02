@import Foundation;
#import "ObjcEndPoint.h"

NS_ASSUME_NONNULL_BEGIN

@interface ObjcAPI : NSObject

@property (nonatomic, strong) ObjcEndPoint *endPoint;
@property (nonatomic, strong) NSString *path;

@property (nonatomic, strong) NSDictionary *parameters;
@property (nonatomic) BOOL isFormData;

@property (nonatomic, strong) NSString *httpMethod;

@property (nonatomic, strong) NSDictionary *header;

- (instancetype)initWithEndPoint:(ObjcEndPoint *)endPoint;

@property (nonatomic) NSURLRequest *urlRequest;

@end

NS_ASSUME_NONNULL_END
