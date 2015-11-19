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
        if let reqHost = request.URL?.host {
            return isCsHost(reqHost, defaultHost: "creativesurvey")
        }
        return false
//        if host?.rangeOfString("ads") != nil {
//            return true;
//        }
//        return false
    }

    class func isCsHost(requestHost: String, defaultHost: String) -> Bool {
//        switch requestHost.rangeOfString(defaultHost) {
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