//
//  MainViewController.swift
//  YoutubeClone
//
//  Created by José Luis Carrillo Padrón on 06/08/22.
//

import UIKit

class MainViewController: UIViewController {
    var rootPageViewController: RootPageViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? RootPageViewController{
            destination.delegateRoot = self
            rootPageViewController = destination
        }
    }
}

extension MainViewController : RootPageProtocol{
    func currentPage(_ index: Int) {
        print("currentpage: ", index)
    }
}


