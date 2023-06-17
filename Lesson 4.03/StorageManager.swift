//
//  StorageManager.swift
//  Lesson 4.03
//
//  Created by Алексей Филиппов on 17.06.2023.
//

import Foundation

final class StorageManager: ObservableObject {
    static let shared = StorageManager()
    
    private let userDefaults = UserDefaults.standard
    private let usernameKey = ""
    
    @Published var username: String? {
        didSet {
            userDefaults.set(username, forKey: usernameKey)
        }
    }
    
    private init() {
        username = userDefaults.string(forKey: usernameKey)
    }
}
