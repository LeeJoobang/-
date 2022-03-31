//
//  인스턴스소멸.swift
//  20220331_매일문법
//
//  Created by Joobang Lee on 2022/03/31.
//

import Foundation

class FileManager{
    var fileName: String
    
    init(fileName: String){
        self.fileName = fileName
    }
    
    func openFile(){
        print("open File: \(self.fileName)")
    }
    
    func modifyFile(){
        print("modify File: \(self.fileName)")
    }
    
    func writeFile(){
        print("write File: \(self.fileName)")
    }
    
    func closeFile(){
        print("close File: \(self.fileName)")
    }
    
    deinit {
        print("Deinit instance")
        self.writeFile()
        self.closeFile()
    }
}

var fileManager: FileManager? = FileManager(fileName: "abc.txt")

if let manager: FileManager = fileManager{
    manager.openFile()
    manager.modifyFile()
}

fileManager = nil
