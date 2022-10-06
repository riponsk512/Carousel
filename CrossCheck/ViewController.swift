//
//  ViewController.swift
//  CrossCheck
//
//  Created by Ripon sk on 06/10/22.
//

import UIKit

class ViewController: UIViewController {
var imgArr = [UIImage(named: "n1"),UIImage(named: "n2"),UIImage(named: "n3"),UIImage(named: "n4")]
  
    @IBOutlet weak var iCaroselView: iCarousel!
    override func viewDidLoad() {
        super.viewDidLoad()
        iCaroselView.delegate = self
        iCaroselView.dataSource = self
        iCaroselView.type = .rotary
        iCaroselView.contentMode = .scaleAspectFill
        iCaroselView.isVertical = true
        iCaroselView.isPagingEnabled = true
               // imgArr = [UIImage(named: "n1")]
        // Do any additional setup after loading the view.
    }


}
extension ViewController:iCarouselDelegate,iCarouselDataSource{
    func numberOfItems(in carousel: iCarousel) -> Int {
        return imgArr.count
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        let imgView:UIImageView?
        if view == nil{
            imgView = UIImageView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width))
            imgView?.contentMode = .scaleAspectFit
            
        }else{
            imgView = (view as? UIImageView)
        }
        imgView?.image = imgArr[index]
        return imgView!
    }
    
    
}
