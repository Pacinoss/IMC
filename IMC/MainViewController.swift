//
//  MainViewController.swift
//  IMC
//
//  Created by Tardes on 13/1/26.
//

import UIKit

class MainViewController: UIViewController {
    
    ///la exclamacion es lo mismo que latenir var que en andorid
    @IBOutlet weak var Label_Altura: UILabel!
    @IBOutlet weak var Slider: UISlider!
    @IBOutlet weak var Peso: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var PasoaPaso: UIStepper!
    @IBOutlet weak var resultadoIMC: UILabel!
    //estan en outlet es una refencia al boton entero  es para cambiarle el color etc.
    


    
    var peso:Float = 60.0
    var altura:Float = 170.0
    // var resultadotexto: String = ""
    
    override func viewDidLoad() {// view did load catrg LA VISTA
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
    }
    @IBAction func CuandoPesoCambie(_ sender: Any) {
        peso = Slider.value
        Peso.text = "\(Int(peso))Kg"//asi nos combien todo en entero metiendo todo a emtero si no sale como float
        
    }
    
    @IBAction func CambioAltura(_ sender: Any) {
        altura = Float(PasoaPaso.value)
        Label_Altura.text = "\(Int(altura)) cm"//su texto es igual a un string y cambia cada que que añadimos mas altura la (\) nos sireve para meter string
    }
    
    @IBAction func ComprobarIMC(_ sender: Any) {// es de tipo action
        // print ("haz pulsado el boton comprobar")//esto lo muestra en el "logcat"
        let alturaenMetros:Float = altura / 100.0
        let imc = peso / alturaenMetros * alturaenMetros
        //   let imc = altura / powf(alturaenMetros,2)// las variables no se empizan con mayus
        
        resultLabel.text = String(format: "Tu IMC es: %.2f", imc)
        var resultadotext = ""
        var resultadoColor = UIColor.black
        switch imc {
        case 0..<18.5:
            resultadotext = "Estas hecho un hueso"
            resultadoColor = UIColor.imcBajopeso
            //este es otro ejemlo de como lo podemos hacer de otra manera mas agil
            
        case 18.5..<25:
            resultadoIMC.text = "Peso Perfecto"
            resultLabel.textColor = UIColor.imcPesonormal
        case 30..<35:
            resultadoIMC.text = "Estas un poco Sobrepesado"
            resultLabel.textColor = UIColor.imcSobrepeso
            resultadoIMC.textColor = UIColor.imcSobrepeso
        case 35..<40:
            resultadoIMC.text = "Estas con Obesidad"
            resultLabel.textColor = UIColor.imcObeso
            resultadoIMC.textColor = UIColor.imcObeso
            
        default:
            resultadoIMC.text = resultadotext
            resultLabel.textColor = resultadoColor
            resultadoIMC.textColor = resultadoColor
        }
    }

    
}

