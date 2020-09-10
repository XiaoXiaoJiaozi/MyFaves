//
//  DetailViewController.swift
//  MyFaves
//
//  Created by Mom on 9/9/20.
//  Copyright © 2020 Jinxiao Ning. All rights reserved.
//

import UIKit

import WebKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var WebSite: WKWebView!
   
     var weburl:String = ""
    
    func configureView() {
        // Update the user interface for the detail item.
        if weburl != "" {
//            if let label = detailDescriptionLabel {
//                label.text = detail.description
//            }
            if let myWebview = WebSite {
                if let url = URL(string: weburl) {
                    let request = URLRequest(url: url)
                    myWebview.load(request)
                }
            }
        }else{
            //Defaul Home Page Loads when App first runs
            if let myWebview = WebSite {
                title = "Home"
                if let url = URL(string: "https://www.washington.edu") {
                    let request = URLRequest(url: url)
                    myWebview.load(request)
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

//    var detailItem: NSDate? {
//        didSet {
//            // Update the view.
//            configureView()
//        }
//    }


}

