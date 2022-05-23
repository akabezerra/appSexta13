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
    
    //MARK: - IBOUTLETS
    @IBOutlet weak var comoEstouPickerView: UIPickerView!
    
    @IBOutlet weak var ultimoAcessoDatePicker: UIDatePicker!
    @IBOutlet weak var proximoFilmeDatePicker: UIDatePicker!
    //MARK: - Override funcs
    override func viewDidLoad() {
        super.viewDidLoad()
        comoEstouPickerView.dataSource = self
        comoEstouPickerView.delegate = self
        
        guardarDataUltimoAcesso()
        guardarDataProximoFilme()
    }
    //MARK: - Funções privadas
    private func guardarDataUltimoAcesso(){
        let dataAtual = Date()
        if let ultimoAcesso = userDefaults.object(forKey: "ultimoAcesso") as? Date {
            ultimoAcessoDatePicker.date = ultimoAcesso
        }else {
            ultimoAcessoDatePicker.date = dataAtual
            // Setar no userDefaults que é para guardar data atual
            userDefaults.set(dataAtual, forKey: "ultimoAcesso")
        }
    }
    
    private func guardarDataProximoFilme(){
        let dataAtual = Date()
        if let dataproximoFilme = userDefaults.object(forKey: "proximoFilme") as? Date {
            proximoFilmeDatePicker.date = dataproximoFilme
        } else {
            proximoFilmeDatePicker.date = dataAtual
        }
    }
    //MARK: - ACTIONS
    @IBAction func proximoFilmeButton(_ sender: Any) {
        
        //Setar localmente(userDefaults) a data que o usuário selecionou
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



