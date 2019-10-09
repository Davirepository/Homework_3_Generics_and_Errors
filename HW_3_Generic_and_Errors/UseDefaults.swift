//
//  UseDefaults.swift
//  HW_3_Generic_and_Errors
//
//  Created by Давид on 08/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

import Foundation

enum CustomError: Error {
    case error
    
    var localizedDescription: String {
        return "Error: no such value in UserDefaults or your key is wrong"
    }
}

struct Persistant<T> {
    
    weak var userDefaults = UserDefaults.standard
    let error = CustomError.error
    
    func write(_ value: T, forKey: String) {
        userDefaults?.set(value, forKey: forKey)
    }
    
    func reade(_ forKey: String) -> Result<T, Error>{
        guard let returnValue = userDefaults?.object(forKey: forKey) as? T else {
            print(error.localizedDescription)
            return .failure(error)
        }
        print("We got some value = \(returnValue)")
        return .success(returnValue)
    }
    
}
