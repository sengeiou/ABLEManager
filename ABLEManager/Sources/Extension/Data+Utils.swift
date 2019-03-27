//
//  Data+Parser.swift
//  ABLEManager
//
//  Created by Riccardo Paolillo on 02/01/2019.
//  Copyright © 2019 ABLE. All rights reserved.
//

import Foundation


open extension Data {
    open var isNoneOrZeroFilled: Bool {
        get {
            var res = true
            self.hexString.forEach { (element) in
                if String(element) != "0" {
                    res = false
                }
            }
            return res
        }
    }
    
    open var asciiString: String {
        get {
            return String(bytes: self, encoding: .ascii) ?? ""
        }
    }
    
    open var hexString: String {
        get {
            return reduce("") { "\($0)" + "\(Utils.intToHex(Int($1)) ?? "")" }
        }
    }
}
