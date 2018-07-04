//
//  ViewController.swift
//  YoutubeDemo
//
//  Created by yuki.pro on 2018. 7. 3..
//  Copyright © 2018년 yuki. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate, WKNavigationDelegate{

    @IBOutlet var videoView: WKWebView!
    
    @IBOutlet weak var videoView2: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoView.uiDelegate = self
        videoView.navigationDelegate = self
        
        // WK웹뷰
        let initURL = "http://dh2y.iptime.org:8081"
        let myURL = URL(string: initURL)
        let myRequest = URLRequest(url: myURL!)
        videoView?.load(myRequest)
        
        
        
//
////        let url = Bundle.main.url(forResource: "index", withExtension: "html")!
//                let initURL = "http://dh2y.iptime.org:8081/login/login.do"
//                let url = URL(string: initURL)
//        //videoView.loadFileURL(url!, allowingReadAccessTo: url!)
//
//        videoView.loadHTMLString(initURL, baseURL: nil)
////        let request = URLRequest(url: url!)
////        videoView.load(request)
        
        
        
        
        
        // UI웹뷰
        videoView2.allowsInlineMediaPlayback = true
//        videoView2.loadHTMLString("<iframe width=\"\(videoView2.frame.width)\" height=\"\(videoView2.frame.height)\" src=\"http://dh2y.iptime.org:8081\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
//        videoView2.loadHTMLString("<iframe  width=\"\(videoView2.frame.width)\" height=\"\(videoView2.frame.height)\" src=\"http://www.youtube.com/embed/9by4H4khSFg\"></iframe>", baseURL: nil)
     //<iframe id="player" type="text/html" width="640" height="360"  src="http://www.youtube.com/embed/9by4H4khSFg" ></iframe>
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

