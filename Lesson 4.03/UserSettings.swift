//
//  UserSettings.swift
//  Lesson 4.03
//
//  Created by Алексей Филиппов on 15.06.2023.
//

import Foundation

final class UserSettings: ObservableObject {
    @Published var isLoggedIn = false
    var name = ""
}
