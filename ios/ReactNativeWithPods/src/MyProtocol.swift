//
//  MyProtocol.swift
//  
//
//  Created by Yohei Okubo on 11/19/15.
//
//

import UIKit

class MyProtocol: NSURLProtocol {
    
    /* class methods */
    override static func canInitWithRequest(request: NSURLRequest) -> Bool {

        let host = Config().hostName

        if let reqHost = request.URL?.host {
            return isAcceptableHost(reqHost, defaultHost: host)
        } else {
            return false
        }
    }

    override static func canonicalRequestForRequest (request: NSURLRequest) -> NSURLRequest {
        return request;
    }

    static func isAcceptableHost(requestHost: String, defaultHost: String) -> Bool {
        if requestHost == defaultHost { return true }
        return false
    }

    /* instance methods */
    override func startLoading() {
        if let reqURL = self.request.URL {
            p("requestURL:",reqURL)

            let path: String? = reqURL.path

            // design PseudoServer ( NSURLRepuest ) -> NSHTTPURLResponse
            let res: Response = PseudoServer.query(path!)

            p(res.header) // for debug
            p(res.payload) // for debug
            let data = res.payload.dataUsingEncoding(NSUTF8StringEncoding)
            // TODO : migrate to my response.
            let response = NSHTTPURLResponse(URL: reqURL,
                                            statusCode: 200,
                                            HTTPVersion: "1.1",
                                            headerFields: ["Access-Control-Allow-Origin":"*"]) as NSURLResponse?
            self.client?.URLProtocol(self,
                didReceiveResponse: response!,
                cacheStoragePolicy: NSURLCacheStoragePolicy.NotAllowed)
            self.client?.URLProtocol(self, didLoadData: data!)
        }
        self.client?.URLProtocolDidFinishLoading(self)
    }
    
    override func stopLoading() {}
}