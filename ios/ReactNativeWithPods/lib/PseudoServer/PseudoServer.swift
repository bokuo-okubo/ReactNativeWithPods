//
//  PseudoServer.swift
//  ReactNativeWithPods
//
//  Created by Yohei Okubo on 11/26/15.
//  Copyright © 2015 bko. All rights reserved.
//

import Foundation

class InternalWeb {
    static let router = Router()
    static let server = Server(router: router)

    static func invoke(path: String) -> Response {
        return server.call( Request(["path": path]) )
    }
}
