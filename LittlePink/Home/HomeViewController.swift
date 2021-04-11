//
//  HomeViewController.swift
//  LittlePink
//
//  Created by Danki on 09.04.21.
//

import UIKit
import XLPagerTabStrip

class HomeViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        // MARK: - Setup the bar on the top
        // The bar bellow seletedBar
        settings.style.selectedBarBackgroundColor = UIColor(named: "Main")!
        settings.style.selectedBarHeight = 3
        
        settings.style.buttonBarItemBackgroundColor = .clear
        settings.style.buttonBarItemTitleColor = .label
        settings.style.buttonBarItemFont = .systemFont(ofSize: 15)
        settings.style.buttonBarItemLeftRightMargin = 0
        
        super.viewDidLoad()
        
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }

            oldCell?.label.textColor = .secondaryLabel
            newCell?.label.textColor = .label
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let followVC = storyboard!.instantiateViewController(identifier: kFollowVCID)
        let discoverVC = storyboard!.instantiateViewController(identifier: kDiscoverVCID)
        let nearbyVC = storyboard!.instantiateViewController(identifier: kNearbyVCID)
        
        return [followVC, nearbyVC, discoverVC]
    }
}
