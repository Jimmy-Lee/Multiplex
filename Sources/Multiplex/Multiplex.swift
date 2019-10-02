import Foundation
import ObjcNetworking
import SwiftNetworking

public typealias Completion = (Result<(Data, URLResponse), Error>) -> Void

public class ObjcSessionManager {
    public let session: URLSession
    public let operationQueue: OperationQueue

    public init(operationQueue: OperationQueue) {
        self.operationQueue = operationQueue
        self.session = .init(configuration: .default, delegate: nil, delegateQueue: operationQueue)
    }

    public func request(api: ObjcAPI, completion: @escaping Completion) {
        let task = session.dataTask(with: api.urlRequest) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success((data!, response!)))
            }
        }

        task.resume()
    }
}

public class SwiftSessionManager {
    public let session: URLSession
    public let operationQueue: OperationQueue

    public init(operationQueue: OperationQueue) {
        self.operationQueue = operationQueue
        self.session = .init(configuration: .default, delegate: nil, delegateQueue: operationQueue)
    }

    public func request(api: SwiftAPI, completion: @escaping Completion) {
        let task = session.dataTask(with: api.urlRequest) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success((data!, response!)))
            }
        }

        task.resume()
    }
}
