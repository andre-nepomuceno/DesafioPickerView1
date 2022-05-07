//
//  ViewController.swift
//  DesafioPickerView1
//
//  Created by André N. dos Santos on 06/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nomesPickerView: UIPickerView!
    @IBOutlet weak var nomeLabel: UILabel!
    
    let nomes = ["Andre",
                 "Gabriel",
                 "Marcelo",
                 "Francinildo",
                 "Jessica",
                 "Adriano"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nomesPickerView.dataSource = self
        nomesPickerView.delegate = self
        
    }

    @IBAction func botaoTrocarNomeAction(_ sender: UIButton) {
        let componente = 0 //Nosso picker só tem um component (coluna)
        let linha: Int = nomesPickerView.selectedRow(inComponent: componente)
        nomeLabel.text = nomes[linha]
    }
    
}
extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return nomes.count
    }
       
}
extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return nomes[row]
    }
}
