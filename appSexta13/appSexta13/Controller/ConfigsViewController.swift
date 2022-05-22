//
//  ConfigsViewController.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 21/05/22.
//

import UIKit

class ConfigsViewController: UIViewController {
    
    let comoEstou = ["Ótimo", "Bem", "Mais ou Menos", "Mal", "Péssimo"]
    let userDefaults = UserDefaults.standard
    
    
    @IBOutlet weak var comoEstouPickerView: UIPickerView!
    
    @IBOutlet weak var ultimoAcessoDatePicker: UIDatePicker!
    @IBOutlet weak var proximoFilmeDatePicker: UIDatePicker!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        comoEstouPickerView.dataSource = self
        comoEstouPickerView.delegate = self
        
        let dataDeHoje = Date()
        
        if let ultimoAcesso = userDefaults.object(forKey: "ultimoAcesso") as? Date {
            ultimoAcessoDatePicker.date = ultimoAcesso
        }else {
            
            ultimoAcessoDatePicker.date = dataDeHoje
            //
            userDefaults.set(dataDeHoje, forKey: "ultimoAcesso")
        }
        
        if let proximoFilme = userDefaults.object(forKey: "proximoFilme") as? Date {
            proximoFilmeDatePicker.date = proximoFilme
        } else {
            proximoFilmeDatePicker.date = dataDeHoje
        }
        
    }
    
    
    @IBAction func proximoFilmeButton(_ sender: Any) {
        
        userDefaults.set(proximoFilmeDatePicker.date, forKey: "proximoFilme")
    }
    
}
//MARK: - UIPickerView datasource & delegate
extension ConfigsViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        comoEstou.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        comoEstou[row]
    }
    
    
}



