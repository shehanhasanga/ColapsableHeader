//
//  Message.swift
//  ColapsableHeader
//
//  Created by shehan karunarathna on 2022-02-12.
//

import Foundation
import SwiftUI


struct Message : Identifiable{
    var id:String = UUID().uuidString
    var message:String
    var userName:String
    var tintColor:Color
}


var allMessages : [Message] = [
    Message( message:"we go to park" , userName: "karuna", tintColor:.pink),
    Message( message:"we go to the store with dog. It is not far away from here" , userName: "shehan", tintColor:.red),
    Message( message:"we go to park" , userName: "Aron", tintColor:.green),
    Message( message:"we go to we go to the store with dog. It is not far away from here" , userName: "finch", tintColor:.orange),
    Message( message:"we go to park" , userName: "karuna", tintColor:.yellow),
    Message( message:"we go to we go to the store with dog. It is not far away from here" , userName: "karuna", tintColor:.blue),
    Message( message:"we go to park" , userName: "karuna", tintColor:.pink),
    Message( message:"we go to the store with dog. It is not far away from here" , userName: "shehan", tintColor:.red),
    Message( message:"we go to park" , userName: "Aron", tintColor:.green),
    Message( message:"we go to we go to the store with dog. It is not far away from here" , userName: "finch", tintColor:.orange),
    Message( message:"we go to park" , userName: "karuna", tintColor:.yellow),
    Message( message:"we go to we go to the store with dog. It is not far away from here" , userName: "karuna", tintColor:.blue)

]
