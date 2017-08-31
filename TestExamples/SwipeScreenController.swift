//
//  SwipeScreenController.swift
//  TestExamples
//
//  Created by Innuy on 8/30/17.
//  Copyright © 2017 Innuy. All rights reserved.
//

import UIKit

class SwipeScreenController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var pages = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.dataSource = self
        
        let firstPage: UIViewController! = storyboard?.instantiateViewController(withIdentifier: "firstSwipeScreen")
        let secondPage: UIViewController! = storyboard?.instantiateViewController(withIdentifier: "secondSwipeScreen")
        
        pages.append(firstPage)
        pages.append(secondPage)
        
        setViewControllers([firstPage], direction: UIPageViewControllerNavigationDirection.forward, animated: false, completion: nil)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController)-> UIViewController? {
        
        let cur = pages.index(of: viewController)!
        if cur == 0 { return nil }
        
        let prev = abs((cur - 1) % pages.count)
        return pages[prev]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController)-> UIViewController? {
        
        let cur = pages.index(of: viewController)!
        
        if cur == (pages.count - 1) {
            return nil
        }
        
        let nxt = abs((cur + 1) % pages.count)
        return pages[nxt]
    }
    
    func presentationIndex(for pageViewController: UIPageViewController)-> Int {
        return pages.count
    }
}
