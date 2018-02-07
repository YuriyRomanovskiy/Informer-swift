//
//  DetailViewController.swift
//  Hello
//
//  Created by Yuriy Romanovskiy on 06.02.18.
//  Copyright © 2018 Yuriy Romanovskiy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var LinkLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var NameLbl: UILabel!
    @IBOutlet weak var fullDescriptionLbl: UILabel!
    @IBOutlet weak var DetailItemImage: UIImageView!
    var detailItemImage = ""
    var descriptionString = ""
    var fullDescriptionString = ""
    var nameString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        LinkLbl.text = "link"
        DetailItemImage.image = UIImage(named: detailItemImage)
        //fullDescriptionLbl.text = fullDescriptionString
        fullDescriptionLbl.text = "saddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdsaddasdasdasdasdasdqqqqq"
        NameLbl.text = nameString
        descriptionLbl.text = descriptionString
        
        
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
