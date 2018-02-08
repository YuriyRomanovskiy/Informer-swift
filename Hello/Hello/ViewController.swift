//
//  ViewController.swift
//  Hello
//
//  Created by Yuriy Romanovskiy on 04.02.18.
//  Copyright © 2018 Yuriy Romanovskiy. All rights reserved.
//

import UIKit


struct ItemsType: Decodable{
    var item: [Item?]
}

struct Item: Decodable {
    var name: String
    var desc1: String
    var desc2: String
    var fullDesc: String
    var image1: String
    var image2: String
    var link: String
    
}


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var itemList: ItemsType?
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return list.count
        return (itemList?.item.count)!
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        cell.NameLbl.text = itemList?.item[indexPath.row]?.name
        cell.ItemImage.image = UIImage(named: (itemList?.item[indexPath.row]?.image1)!)
        cell.ItemImage.layer.cornerRadius = cell.ItemImage.frame.height / 2
        cell.DescriptionLbl.text = itemList?.item[indexPath.row]?.desc1
        cell.DescriptionLbl2.text = itemList?.item[indexPath.row]?.desc2
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "itemSegue"{
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! DetailViewController
                //todo check for nil
                destinationController.detailItemImage = (itemList?.item[indexPath.row]?.image2)!
                destinationController.descriptionString = (itemList?.item[indexPath.row]?.desc1)!
                destinationController.nameString = (itemList?.item[indexPath.row]?.name)!
                destinationController.fullDescriptionString = (itemList?.item[indexPath.row]?.fullDesc)!
                destinationController.linkString = (itemList?.item[indexPath.row]?.link)!
                
            }
        }
    }
        
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let path = Bundle.main.path(forResource: "Items2", ofType: "json"){
            do{
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options:.alwaysMapped)
                let jsonResult = try JSONDecoder().decode(ItemsType.self, from: data)
                itemList = jsonResult
                
            }catch let error{
                print(error)
            }
            
        } else{
            print ("path")
        }
      
    }

    


}

