//
//  ViewController.swift
//  PROJETO IMC
//
//  Created by iOSLab on 02/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weight: UITextField! //peso
    @IBOutlet weak var height: UITextField! //altura
    @IBOutlet weak var result: UILabel! //resultado
    @IBOutlet weak var categoria: UILabel!
    var imc = 0.0
    
    @IBAction func calc(_ sender: Any) {
        guard let heightText: String = height.text else {return}
        guard let widthText: String = weight.text else {return}
        guard let height: Double = Double(heightText) else {return}
        guard let width: Double = Double(widthText) else {return}
        
      imc = round (width / (height * height))
      //var imc2 = round(imc)

        
        result.text = "O resultado é \(imc)"
        
        switch imc {
                case 0..<16:
                    categoria.text = "Magreza"
                case 16..<18.5:
                    categoria.text = "Abaixo do peso"
                case 18.5..<25:
                    categoria.text = "Peso ideal"
                case 25..<30:
                    categoria.text = "Sobre peso"
                default:
                    categoria.text = "Obesidade"
                }
        
    }

        

    }


        
    



