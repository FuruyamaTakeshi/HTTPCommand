//
//  SerialSendCommand.swift
//  HTTPCommand
//
//  Created by Furuyama Takeshi on 2015/05/23.
//  Copyright (c) 2015年 Furuyama Takeshi. All rights reserved.
//

import Foundation

class SerialSendCommand: HTTPCommand {
    
    var commandQueue = [HTTPCommand]()
    
    internal func add(command: HTTPCommand) {
        
        self.commandQueue.append(command)
    }
    
    override func execute() {
        
        let queue = dispatch_queue_create("com.example.gcd.MySerialDispatchqueue", DISPATCH_QUEUE_SERIAL)
        for command in self.commandQueue {
            command.execute()
        }
        
    }
}