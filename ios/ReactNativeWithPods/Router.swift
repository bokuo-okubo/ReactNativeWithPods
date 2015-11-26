//
//  Router.swift
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

struct Request {

    let params: Dictionary<String, String>

    init(_ params: Dictionary<String, String>) { self.params = params }
}

struct Response {

    let status: UInt
    let header: Dictionary<String, String>
    let body: String

    init(status: UInt, header: Dictionary<String, String>, body: String) {
        (self.status, self.header, self.body) = (status, header, body)
    }
}


class Server {

    let router: Router

    init(router: Router) {
        self.router = router
    }

    func call(req: Request) -> Response {
        print(req.params["path"])
        
        return Response(status: 200, header: ["message": "hello swift world"], body: "壁についてるスイッッチ")
    }
}


class Router {
    init() {}

    func register<T,F>( path: String, funcs: [(T,F) -> F] ) {
    }

    func handle() {}
}


let auth = { (req: Request, res: Response) -> Response in
    res
    return res
}
