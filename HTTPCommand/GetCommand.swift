//
//  GetCommand.swift
//  HTTPCommand
//
//  Created by Furuyama Takeshi on 2015/05/23.
//  Copyright (c) 2015年 Furuyama Takeshi. All rights reserved.
//

import Foundation
import AFNetworking

class GetCommand: HTTPCommand {
    override func execute() {
        //
        if let uri = self.uriString {
            let serializer:AFJSONRequestSerializer = AFJSONRequestSerializer()
            manager.requestSerializer = serializer
            
            manager.GET(uri, parameters: "hoge",
                success: {(operation: AFHTTPRequestOperation!, responsobject: AnyObject!) in
                    println("Success!!")
                    println(responsobject)},
                failure: {(operation: AFHTTPRequestOperation!, error: NSError!) in
                    println("Error!!")})
        }

    }
}