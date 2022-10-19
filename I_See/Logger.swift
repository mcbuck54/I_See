//
//  Logger.swift
//  I_See
//
//  Created by MCBUCK54 on 9/3/22.
//

import Foundation

// createLogFile
func createLogFile() {
    if let documentsDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first {
        //        let fileName = "\(Date()).log"
        let fileName = "Eco00.log"
        let logFilePath = (documentsDirectory as NSString).appendingPathComponent(fileName)
        freopen(logFilePath.cString(using: String.Encoding.ascii)!, "a+", stderr)
    }
} // end createLogFile

// Logger
class Logger {
    static let shared = Logger()
    
    private init(){}
    
    func debugPrint(
        _ message: Any,
        extra1: String = #file,
        extra2: String = #function,
        extra3: Int = #line,
        remoteLog: Bool = false,
        plain: Bool = false)
    {
        if plain {
            print(message)
        }
        else {
            let filename = (extra1 as NSString).lastPathComponent
            print(message,"[file: \(filename), function: \(extra2), line: \(extra3)]")
        }
        
        // if remoteLog is true the log in server
        if remoteLog {
            // if let msg = message as? String {
            // logEvent(msg, event:.error, param: nil)
            // }
            
        }
    } // end debugPrint
    
    // pretty print
    func prettyPrint(_ message: Any) {
        dump(message)
    } // end prettyPrint
    
    // printDocumentsDirectory
    func printDocumentsDirectory() {
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        print("Document Path:\(documentsPath)")
    } // end printDocumentsDirectory
    
    // logEvent
    func logEvent(_ name: String? = nil, event: String? = nil, param: [String: Any]? = nil) {
        // Analytics.logEvent(name, parameters:param)
    } // end logEvent
    
} // end class Logger
