//
//  SessionManager.swift
//  Cafe-NIBM
//
//  Created by Ishanka Withanage on 2021-04-13.
//

import Foundation

class SessionManager {
    
    func saveLoginState(){
        UserDefaults.standard.set(true,forKey: "Log_Sate")
    }
    
    func clearLoginState(){
        UserDefaults.standard.set(false,forKey: "Log_Sate")
    }
    
    func getLoginState() -> Bool {
        
        return UserDefaults.standard.bool(forKey: "Log_Sate")
    }
    
}
