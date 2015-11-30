//
//  Router.swift
//  ReactNativeWithPods
//
//  Created by Yohei Okubo on 11/26/15.
//  Copyright © 2015 bko. All rights reserved.
//

import Foundation

class Router {
    
    init() {
    }

    func register<T,F>( path: String, funcs: [ T -> F] ) {

    }

    func handle(req: Request) {

    }
}


let auth = { (req: Request, res: Response) -> Response in res
    return res
}
