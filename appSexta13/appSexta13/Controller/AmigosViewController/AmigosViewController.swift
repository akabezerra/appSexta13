//
//  AmigosViewController.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 21/05/22.
//

import UIKit

class AmigosViewController: UIViewController {
    
    @IBOutlet weak var amigosTableViewCell: UITableView!
    
    let serviceAmigos = ServiceAmigos()
    var amigo:  Amigo?
    //MARK: - Override funcs
    override func viewDidLoad() {
        super.viewDidLoad()
        amigosTableViewCell.dataSource = self
        amigosTableViewCell.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "infoAmigo" else { return }
        guard let infoAmigoVc = segue.destination as? InfoAmigoViewController, let amigo = amigo else { return }
        
        infoAmigoVc.configInfoAmigo(amigo)
    }
}
//MARK: - TableView dataSource & Delegate
extension AmigosViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        serviceAmigos.trazListaAmigos().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let amigo = serviceAmigos.trazListaAmigos()[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "amigosCell") as? AmigoTableViewCell
            
        cell?.cellConfig(amigo)
        
        return  cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        amigo =  serviceAmigos.trazListaAmigos()[indexPath.row]
        
        performSegue(withIdentifier: "infoAmigo", sender: nil)
    }
}
