//
//  PseudoServer.swift
//  ReactNativeWithPods
//
//  Created by Yohei Okubo on 11/26/15.
//  Copyright © 2015 bko. All rights reserved.
//

import Foundation
import Dollar

typealias RouteMap = [String : [ Responsible ]]

typealias Responsible = (Request,Response) -> Response

typealias Request = Dictionary<String,String>


/* ----------------------------------------------- */

class Response {

    // TODO : wrap primitive response type
    var header: String
    var payload: String

    init() { (header,payload) = ("","") }

    func header(args: String...) -> Void {
        self.header = args.reduce(self.header,
            combine: { (result, current) -> String in
                return result + current}
        )
    }

    func write(args: MiddleWare...) -> Void{
        self.payload = args.reduce(self.payload,
            combine: { (result, current) -> String in
                return result + current}
        )
    }

    func end() {
        // closing response
    }
}

/* ----------------------------------------------- */

class MiddleWare {

    let stack: [ Responsible ]

    init(funcs: [ Responsible ] ) {
        stack = funcs
    }

    func handle(req: Request, res:Response) {
        MiddleWare.reduce
    }

    static func reduce(stack: [Responsible], req: Request, res:Response) {
        stack.count

        return Response()
    }
}
/* ----------------------------------------------- */

class Router {
    let route: RouteMap

    init(route: RouteMap) {
        self.route = route
    }

    func handle(req: Request, res: Response)->Response {
        return;
    }
}

class Server {

    let router: Router

    init(router: Router) {
        self.router = router
    }

    func call(req: Request,res: Response) -> Response {
        return Response()
    }
}

/* -----------------------------------------------
*   main
*  ----------------------------------------------- */

class PseudoServer {
    static let router = Router(route: PseudoServer.ROUTE)
    static let server = Server(router: router)

    static let ROUTE: RouteMap = [
        "/foo": [Acts().session, Acts.auth],
        "/bar": [Acts().session]
    ]

    static func query(path:String) -> Response {
        return invoke(server, path: path)
    }

    private static func invoke(server: Server, path: String) -> Response {
        let req: Request = ["path": path]
        return server.call(req, res: Response() );
    }
}


struct Acts {

    let session: Responsible = { req, res in
        var hashValue = [String(random())]
        return res.write(hashValue)
    }

    static func auth(req: Request, res: Response) -> Response {
        return Response()
    }
}