//
//  Server.swift
//  
//
//  Created by Yohei Okubo on 11/26/15.
//
//

import Foundation

class Server {

    let router: Router

    init(router: Router) {
        self.router = router
    }

    func call(req: Request) -> Response {
        print(req.params["path"])

        return Response(status: 200, header: ["message": "hello swift world"], body: "{\"hoge\":\"this is psodo server.\"}")
    }
}
