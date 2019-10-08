//
//  ViewController.swift
//  HW_3_Generic_and_Errors
//
//  Created by Давид on 08/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stored = Persistant<Int>()
//        stored.write(10, forKey: "did")
        try? stored.reade("did")
        
        let stored2 = Persistant<Bool>()
//        stored2.write(true, forKey: "do")
        try? stored.reade("do")
        
        let stored3 = Persistant<String>()
//        stored3.write("check it", forKey: "done")
        try? stored.reade("done")
        
        try? stored.reade("ok")
    }


}

