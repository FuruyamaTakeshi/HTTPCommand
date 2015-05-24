//
//  HTTPCommand.swift
//  HTTPCommand
//
//  Created by Furuyama Takeshi on 2015/05/23.
//  Copyright (c) 2015年 Furuyama Takeshi. All rights reserved.
//

import Foundation
import AFNetworking

class HTTPCommand {
    
    let manager: AFHTTPRequestOperationManager = AFHTTPRequestOperationManager()
    var uriString: String?
    
    var block: ( () -> Void )?
    
    func execute() {
        assert(false, "子クラスで実装")
    }
    
}

