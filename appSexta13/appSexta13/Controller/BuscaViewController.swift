//
//  BuscaViewController.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 21/05/22.
//

import UIKit

class BuscaViewController: UIViewController {
    
    
    @IBOutlet weak var buscarTextField: UITextField!
    
    @IBOutlet weak var filmesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

extension BuscaViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
        
        
    }
    
    
    
}

