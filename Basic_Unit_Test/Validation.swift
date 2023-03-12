//
//  Validation.swift
//  Basic_Unit_Test
//
//  Created by Alper Yorgun on 12.03.2023.
//

import Foundation


struct Validation {
    
    func hasUpperCaseLetter(_ string: String) -> Bool {
        return string.rangeOfCharacter(from: .uppercaseLetters) != nil
    }
    
    func hasNumber(_ string: String) -> Bool {
        return string.rangeOfCharacter(from: .decimalDigits) != nil
    }
    
    func validateUserName(userName : String) throws {
        
        let upperCaseLetterResult = hasUpperCaseLetter(userName)
        let userNameNumberResult = hasNumber(userName)
        
        guard  userName.count < 16 else { throw ValidError.userNameTooLong}
        
        if upperCaseLetterResult {
            throw ValidError.userNameUpperCasedChar
        }
        
        if userNameNumberResult {
            throw ValidError.userNameNumber
        }
        
        
        guard  userName.count > 3 else { throw ValidError.userNameTooShort}

    }
}

enum ValidError : Error   {
    case invalidError
    case userNameTooLong
    case userNameTooShort
    case userNameUpperCasedChar
    case userNameNumber
    
}
