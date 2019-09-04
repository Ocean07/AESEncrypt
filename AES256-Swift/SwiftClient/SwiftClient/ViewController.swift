//
//  ViewController.swift
//  SwiftClient
//
//  Created by luomeng on 2019/3/1.
//  Copyright © 2019年 comp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let key = "7854156156611111"
        let iv =  "0000000000000000"
        let aes = try? AES(key: key, iv: iv, padding: .pkcs7)
        
        let plainTxt = "https://www.instagram.com"
        
        let cryptTxt = try? plainTxt.encryptToBase64(cipher: aes!)
        print(cryptTxt as Any)
        
        let decryptedLink = try? cryptTxt!!.decryptBase64ToString(cipher: aes!)
        print(decryptedLink as Any)
    }
    
    


}

