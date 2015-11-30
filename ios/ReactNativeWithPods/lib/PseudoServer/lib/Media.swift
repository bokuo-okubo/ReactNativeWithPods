//
//  Medium.swift
//  
//
//  Created by Yohei Okubo on 11/26/15.
//
//

import Foundation

struct Request {

    let params: Dictionary<String, String>

    init(_ params: Dictionary<String, String>) { self.params = params }

    let path: String
}

struct Response {

    let status: UInt
    let header: Dictionary<String, String>
    let body: String

    init(status: UInt, header: Dictionary<String, String>, body: String) {
        (self.status, self.header, self.body) = (status, header, body)
    }
}
