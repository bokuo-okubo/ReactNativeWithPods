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

        let host = Config().hostName

        if let reqHost = request.URL?.host {
            return isAcceptableHost(reqHost, defaultHost: host)
        } else {
            return false
        }
    }

    override class func canonicalRequestForRequest (request: NSURLRequest) -> NSURLRequest {
        return request;
    }

    class func isAcceptableHost(requestHost: String, defaultHost: String) -> Bool {
        print("request-host:", requestHost)
        print("default-host:", defaultHost)
        if requestHost == defaultHost { return true }
        return false
    }

    override func startLoading() {
        let dict = ["message" : "This is exactly Google.com"]

        let jsonData = try! NSJSONSerialization.dataWithJSONObject(dict, options: NSJSONWritingOptions.PrettyPrinted )

        let response = NSHTTPURLResponse(URL: self.request.URL!,
                                        statusCode: 200,
                                        HTTPVersion: "1.1",
                                        headerFields: ["Access-Control-Allow-Origin":"*"])
        self.client?.URLProtocol(self,
                                didReceiveResponse: response!,
                                cacheStoragePolicy: NSURLCacheStoragePolicy.NotAllowed)
        self.client?.URLProtocol(self, didLoadData: jsonData)
        self.client?.URLProtocolDidFinishLoading(self)
    }

    override func stopLoading() {}
}