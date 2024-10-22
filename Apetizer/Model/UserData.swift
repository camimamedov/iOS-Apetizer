//
//  UserData.swift
//  Apetizer
//
//  Created by Cami Mamedov on 28.01.24.
//

import Foundation

struct UserData: Codable{
   var firstName = ""
   var lastName = ""
   var email = ""
   var birthDay = Date()
   var extraNapkins = false
}
