//
//  SlidersViewController.swift
//  FindATrampo
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 FindATrampo. All rights reserved.
//

import UIKit

class SlidersViewController: UIPageViewController {
    
    
    var paginador = UIPageControl()
    
    func initPaginador() {
        
        self.paginador.numberOfPages = self.slidersViewController.count
        self.paginador.currentPage = 0
        let halfScreen = self.view.frame.width / 2
        let bottonScreen = self.view.frame.height-16
        
        self.paginador.frame.origin = CGPoint(x: halfScreen, y: bottonScreen)
        self.view.addSubview(self.paginador)
        
    }
    
    
    private func viewControllerChamada(_ identifier: String) -> UIViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: identifier)
        return viewController
    }
    
    lazy var slidersViewController : [UIViewController]={
        
        return [
            self.viewControllerChamada("pink1"),
            self.viewControllerChamada("pink2"),
            self.viewControllerChamada("pink3")
        ]
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.delegate = self
        self.dataSource = self
        
        if let primaryViewController = self.slidersViewController.first {
            self.setViewControllers([primaryViewController],
                                    direction: .forward,
                                    animated: true,
                                    completion: nil)
        }
        self.initPaginador()
    }
    
    
}


extension SlidersViewController : UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        
        guard let indiceDaViewController = self.slidersViewController.index(of: viewController) else {
            return nil
        }
        
        
        let indiceAnterior = indiceDaViewController - 1
        
        
        if indiceAnterior < 0 {
            return nil
        }
        
        
        if indiceAnterior > self.slidersViewController.count {
            return nil
        }
        
        
        return self.slidersViewController[indiceAnterior]
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let indiceDaViewController = self.slidersViewController.index(of: viewController) else {
            return nil
        }
        
        
        let proximoIndice = indiceDaViewController + 1
        
        
        let quantidadeDeViewControllers = self.slidersViewController.count
        
        
        if proximoIndice == quantidadeDeViewControllers   {
            return nil
        }
        
        
        if proximoIndice > quantidadeDeViewControllers {
            return nil
        }
        
        return self.slidersViewController[proximoIndice]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        
        if let viewControllerAtual = self.viewControllers?.first {
            
            if let indice = self.slidersViewController.index(of: viewControllerAtual) {
                self.paginador.currentPage = indice
            }
        }
    }
    
}


