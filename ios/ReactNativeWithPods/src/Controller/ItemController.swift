//
//  PseudoController.swift
//  ReactNativeWithPods
//
//  Created by Yohei Okubo on 11/30/15.
//  Copyright © 2015 bko. All rights reserved.
//

import Foundation

class StubController: RequestHandlable {
    init() {
        Item()
    }

    func show(req: Request) -> Response {
    }
}