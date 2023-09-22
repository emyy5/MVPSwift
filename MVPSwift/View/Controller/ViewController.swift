//
//  ViewController.swift
//  MVPSwift
//
//  Created by Eman Khaled on 22/09/2023.
//

import UIKit
protocol HomeProtocol {
    func renderView(result : MyResult?)
}
class ViewController: UIViewController, HomeProtocol {
    func renderView(result: MyResult?) {
        // mn el controller>>update  view
        DispatchQueue.main.async {
            self.nameLabel.text = result?.data[0].employee_name
        }
    }
    

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //P->V
        let presenter = Presenter()
        presenter.getItems()
        presenter.attachView(view: self)
    }


}

