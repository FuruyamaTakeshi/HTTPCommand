//
//  YahooGetCommand.swift
//  HTTPCommand
//
//  Created by Furuyama Takeshi on 2015/05/23.
//  Copyright (c) 2015年 Furuyama Takeshi. All rights reserved.
//

import Foundation

class YahooGetCommand: GetCommand {
    
    override init() {
        super.init()
        self.uriString = "http://ajax.googleapis.com/ajax/services/feed/load?v=1.0&q=http://rss.rssad.jp/rss/impresswatch/pcwatch.rdf&num=100"
    }
}