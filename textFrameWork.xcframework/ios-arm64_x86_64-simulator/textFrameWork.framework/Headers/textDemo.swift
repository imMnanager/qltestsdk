//
//  textDemo.swift
//  textFrameWork
//
//  Created by Silver on 12/11/23.
//

import Foundation
import Alamofire
public class textDemo{
    public static let netManager = NetworkReachabilityManager(host: "www.google.com")
    public func inintSDK(){
        print("初始化成功")
    }
    
    public class func starListionStatus(){
        netManager?.listener = { status in
            if status == .reachable(.wwan){
                print("蜂窝")
            }else if status == .reachable(.ethernetOrWiFi) {
                print("wifi")
            }else{
                print("无网络")
            }
        }
        netManager?.startListening()
    }
}
