//
//  ViewController.swift
//  test
//
//  Created by 홍석정 on 9/14/19.
//  Copyright © 2019 PaulHong. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    var buildings = [ "Campus Map","CoRec", "Wilmeth Active Learning Center(WALC)","Lawson Computer Science(LWSN)", "Mechanical Engineering(ME)", "Purdue Memorial Union(PMU)", "Hovde Hall", "Physics Building", "Stewert Center","Hicks Library", "Krannert School of Management(Krannert)", "Rawls Hall", "Krach Leadership Center(KRCH)"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //@IBOutlet weak var WebView: UIWebView!
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return (buildings.count)
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
            cell.textLabel!.text = buildings[indexPath.row]
            if(buildings[indexPath.row] == "Emergency"){
                    cell.contentView.backgroundColor = UIColor.red
                    cell.textLabel?.textColor = UIColor.white
            }
            return cell;
        }
    //for next TableView 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cell = sender as! UITableViewCell
        
        let indexPath = tableView.indexPath(for: cell)!
        let floorsViewController = segue.destination as! ViewController2ViewController
        floorsViewController.building = buildings[indexPath.row]
    }
    func prepare2(for segue: UIStoryboardSegue, sender: Any?) {
        let backItem = UIBarButtonItem()
        backItem.title = "1"
        navigationItem.backBarButtonItem = backItem // This will show in the next view controller being pushed
    }
}



