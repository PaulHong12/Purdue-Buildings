//
//  ViewController2ViewController.swift
//  test
//
//  Created by 홍석정 on 9/14/19.
//  Copyright © 2019 PaulHong. All rights reserved.
//

import UIKit

class ViewController2ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var building = "";
    var floors:[String] = [];

    @IBOutlet weak var floorTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (building == "Wilmeth Active Learning Center(WALC)"){
            floors = ["B1","1","2","3","Emergency"]
        }
        else if (building == "Mechanical Engineering(ME)"){
            floors = ["G","B","1","2","3","Emergency"]
        }
        else if(building == "Purdue Memorial Union(PMU)"){
        floors = ["G","1","2","Emergency"]
        }
        else if(building == "CoRec"){
        floors = ["View Map"]
        }
        else if(building == "Campus Map"){
            floors = ["View Map"]
        }
        else if(building == "Lawson Computer Science(LWSN)"){
            floors = ["B","1","2","3"]
        }
    }

        // Do any additional setup after loading the view.
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (floors.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell!.textLabel?.text = floors[indexPath.row]
        if(floors[indexPath.row] == "Emergency"){
            cell?.textLabel?.textColor = UIColor.white
            cell?.backgroundColor = UIColor.red
        }
        return cell!;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cell = sender as! UITableViewCell
        
        let indexPath2 = floorTableView.indexPath(for: cell)!
        let webView = segue.destination as! ViewController3
        
        webView.buildingName = building
        webView.floorNumber = floors[indexPath2.row]
        
    }
    
    func prepare2(for segue: UIStoryboardSegue, sender: Any?) {
        let backItem = UIBarButtonItem()
        backItem.title = ""
        navigationItem.backBarButtonItem = backItem 
    }

}
