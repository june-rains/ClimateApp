//
//  Event.swift
//  climate
//
//  Created by mac on 2022/6/16.
//



import Foundation

struct Event: Identifiable, Hashable, Codable{
    var id: String
    var start_timestamp: String? 
    var end_timestamp: String?
    var summary: String?
    var description: String?
    var status: String?
    var sponsor: String?
    var co_sponsors: [String]?
    var location: Dictionary<String, String>?
    var contact: Dictionary<String, String>?
    var categories: [String]?
    var link: String?
    var event_url: String?
    var submitted_by: [String]?
    var webcast_url: String?
    var series_name: String?
    var presenter: String?
    var image: String?
    var image_alt_text: String?
    var usersRecord: Dictionary<String, String>?
    var feedBack: [String]?
    var feedBackAns: Dictionary<String, [String]>?
}

