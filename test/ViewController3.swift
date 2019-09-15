//
//  ViewController3.swift
//  test
//
//  Created by 홍석정 on 9/14/19.
//  Copyright © 2019 PaulHong. All rights reserved.
//
import UIKit
import WebKit

class ViewController3: UIViewController, WKNavigationDelegate{
    
    var buildingName = ""
    var floorNumber = ""

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var Activity: UIActivityIndicatorView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(buildingName == "Wilmeth Active Learning Center(WALC)"){
        if(floorNumber == "1"){
            let url = URL(string:"https://helloworld-28f1e.firebaseapp.com?floor=1")
            webView.load(URLRequest(url: url!))
            }
        else if(floorNumber == "2"){
            let url = URL(string:"https://helloworld-28f1e.firebaseapp.com?floor=2")
            webView.load(URLRequest(url: url!))
        }
        else if(floorNumber == "3"){
            let url = URL(string:"https://helloworld-28f1e.firebaseapp.com?floor=3")
            webView.load(URLRequest(url: url!))
        }
        else if(floorNumber == "B1"){
            let url = URL(string:"https://helloworld-28f1e.firebaseapp.com?floor=0")
            webView.load(URLRequest(url: url!))
            }
        else if (floorNumber == "Emergency"){
            let url = URL(string:"https://helloworld-28f1e.firebaseapp.com/?isEmergency=true")
            webView.load(URLRequest(url: url!))
            }
    }
        if(buildingName == "CoRec"){
            let url = URL(string:"https://www.purdue.edu/recwell/facilities/maps/corecMaps.php")
            webView.load(URLRequest(url: url!))
        }
        if(buildingName == "Campus Map"){
            let url = URL(string:"https://www.purdue.edu/campus_map/?_ga=2.127699278.2102656671.1568340755-917286879.1567970960")
            webView.load(URLRequest(url: url!))
        }
        if(buildingName == "Lawson Computer Science(LWSN)"){
            if(floorNumber == "B"){
                let url = URL(string:"https://www.cs.purdue.edu/resources/docs/lawson_0.PDF")
                webView.load(URLRequest(url: url!))
            }
            else if (floorNumber == "1"){
                let url = URL(string:"https://www.cs.purdue.edu/resources/docs/lawson_1.PDF")
                webView.load(URLRequest(url: url!))
            }
            else if (floorNumber ==  "2"){
                let url = URL(string:"https://www.cs.purdue.edu/resources/docs/lawson_2.PDF")
                webView.load(URLRequest(url: url!))
            }
            else if (floorNumber == "3"){
                let url = URL(string:"https://www.cs.purdue.edu/resources/docs/lawson_3.PDF")
                webView.load(URLRequest(url: url!))
            }
        }
        if(buildingName == "Purdue Memorial Union(PMU)"){
            if(floorNumber == "G"){
                let url = URL(string:"https://union.purdue.edu/images/_maps/building-map-ground-floor.png")
                webView.load(URLRequest(url: url!))
            }
            else if(floorNumber == "1"){
                let url = URL(string:"https://union.purdue.edu/images/_maps/building-map-main-floor.png")
                webView.load(URLRequest(url: url!))
                
            }
            else if(floorNumber == "2"){
                let url = URL(string:"https://union.purdue.edu/images/_maps/building-map-second-floor.png")
                webView.load(URLRequest(url: url!))
            }
        }
}
}

