//
//  Route.swift
//  ReactNativeWithPods
//
//  Created by Yohei Okubo on 11/30/15.
//  Copyright © 2015 bko. All rights reserved.
//

import Foundation

enum http {
    case GET
    case POST
    case PUT
    case HEAD
    case DELETE
    case OPTIONS
    case TRACE
    case CONNECT
}


//protocol Routable: Dictionary<String,(http, RequestHandlable)> {
//    let method: http
//    let handler: RequestHandlable
//}
//
//protocol RequestHandlable {
//    let _: Request -> Response
//}



