//
//  MyProtocol.swift
//  
//
//  Created by Yohei Okubo on 11/19/15.
//
//

import UIKit

class MyProtocol: NSURLProtocol {


    override class func canInitWithRequest(request: NSURLRequest) -> Bool {

        let host = Config().host

        if let reqHost = request.URL?.host {
            return isAcceptableHost(reqHost, defaultHost: host)
        } else {
            return false
        }
    }

    class func isAcceptableHost(requestHost: String, defaultHost: String) -> Bool {
        print(requestHost, defaultHost)
//        switch requestHost.rangeOfString(defaultHost) {
//        case Range { return true}
//        case NilLiteralConvertible { return false }
//        }
        return false
    }

    override class func canonicalRequestForRequest (request: NSURLRequest) -> NSURLRequest {
        return request;
    }

    override func startLoading() {
//        let response = NSURLResponse(URL: self.request.URL,
//            MIMEType: nil,
//            expectedContentLength: 0,
//            textEncodingName: nil)
//        self.client?.URLProtocol(self,
//            didReceiveResponse: response,
//            cacheStoragePolicy: NSURLCacheStoragePolicy.NotAllowed)
//        self.client?.URLProtocol(self, didLoadData: NSData(bytes: nil, length: 0))
//        self.client?.URLProtocolDidFinishLoading(self)
    }

    override func stopLoading() {}
}