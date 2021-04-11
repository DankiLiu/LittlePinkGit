//
//  DiscoverVC.swift
//  LittlePink
//
//  Created by Danki on 09.04.21.
//

import UIKit
import XLPagerTabStrip

class DiscoverVC: ButtonBarPagerTabStripViewController, IndicatorInfoProvider {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
//        <#code#>
//    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        IndicatorInfo(title: "发现")
    }

}
