//
//  ViewController.swift
//  ch09PageControl
//
//  Created by 김규리 on 2022/01/19.
//

import UIKit

var images = [ "01.png", "02.png", "03.png", "04.png", "05.png", "06.png" ]

class ViewController: UIViewController {
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageControl.numberOfPages = images.count // 전체 페이지 수
        pageControl.currentPage = 0 // 현재 페이지
        pageControl.pageIndicatorTintColor = UIColor.green // 페이지를 표시하는 색상
        pageControl.currentPageIndicatorTintColor = UIColor.red // 현재 페이지를 표시하는 색상
        
        imgView.image = UIImage(named: images[0])
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
    
}

