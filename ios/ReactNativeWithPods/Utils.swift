//
//  Utils.swift
//  ReactNativeWithPods
//
//  Created by Yohei Okubo on 11/26/15.
//  Copyright © 2015 bko. All rights reserved.
//

import Foundation


func p<T>(objs:T...) -> [String] {
    return objs.map({ print($0); return String($0) })
}
