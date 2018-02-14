//
//  WebViewController.swift
//  Hello
//
//  Created by Yuriy Romanovskiy on 09.02.18.
//  Copyright © 2018 Yuriy Romanovskiy. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var DetailWebVIew: UIWebView!
    @IBOutlet weak var ItemLinkLbl: UILabel!
    
    var linkString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        ItemLinkLbl.text = linkString
        
        DetailWebVIew.loadRequest(URLRequest(url: URL(string: linkString)!))
        // Do any additional setup after loading the view.
        //ItemLinkLbl.text = "hello"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
