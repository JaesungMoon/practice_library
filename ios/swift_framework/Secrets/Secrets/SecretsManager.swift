//
//  SecretsManager.swift
//  Secrets
//
//  Created by JaesungMoon on 2021/02/21.
//

import Foundation

public class SecretsManager {
    
    private var isAuthorized: Bool
    
    public init(key: String) {
        #if DEBUG
        print("SecretsManager::init")
        #endif
        isAuthorized = Approved.keys.contains(key) ? true : false
    }
    
    public func readSecret() -> String? {
        return isAuthorized ? "I love custom frameworks" : nil
    }
}

private struct Approved {
    static let keys = ["12345", "asdfg"]
}
