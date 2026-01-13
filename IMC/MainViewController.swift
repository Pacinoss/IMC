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
    @IBOutlet weak var Texto_visible: UILabel!
    //estan en outlet es una refencia al boton entero  es para cambiarle el color etc.
    

    
    var peso:Float = 60.0
    var altura:Float = 170.0
    var resultado:String = ""
    
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
        print ("haz pulsado el boton comprobar")//esto lo muestra en el "logcat"
        let alturaenMetros:Float = altura / 100.0
        let imc = altura / powf(alturaenMetros,2)// las variables no se empizan con mayus
        resultLabel.text = String(format: "Tu IMC es: %.2f", imc)

  
        
    }
}

