//
//  ViewController.swift
//  ButtonWithSound
//
//  Created by Sergio Becerril on 1/5/15.
//  Copyright (c) 2015 Sergio Becerril. All rights reserved.
//

import UIKit

//IMPORTAMOS EL FRAMEWORK
import AVFoundation

class ViewController: UIViewController {
    
    //DECLARAMOS UNA VARIABLE DE REPRODUCTOR DE SONIDO, HAY QUE IMPORTAR EL FRAMEWORK AVFoundation PARA USAR ESTA CLASE
    var player = AVAudioPlayer ()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //DECLARAMOS UNA CONSTANTE PARA CREAR UN BOTÓN
        let button = UIButton(type: UIButtonType.system)

        //CONFIGURAMOS EL TAMAÑO Y LA POSICIÓN EN PANTALLA DEL BOTÓN
        button.frame = CGRect(x: 150, y: 100, width: 100, height: 100)
        
        //SI QUEREMOS QUE NUESTRO BOTÓN SEA REDONDO
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        
        //PONEMOS UN COLOR DE FONDO
        button.backgroundColor = UIColor.yellow
        
        //ESTABLECEMOS UN TITULO PARA EL BOTÓN
        button.setTitle("Play Sound", for: UIControlState())
        
        //PATRÓN TARGET --> ACTION PARA QUE CUÁNDO SE PULSE EL BOTÓN, EL CONTROLADOR EJECUTE EL MÉTODO "playSound:"
        button.addTarget(self, action: #selector(ViewController.playSound(_:)), for: UIControlEvents.touchUpInside)
        
        //PARA QUE NUESTRO BOTÓN SE VEA EN PANTALLA
        self.view.addSubview(button)
        
    }
    
    //MÉTODO QUE REPRODUCE UN SONIDO
    func playSound (_ sender:UIButton){
        
        //SELECCIONAMOS EL SONIDO DE NUESTRO GRUPO DE CARPETAS Y ARCHIVOS Y LO ALMACENAMOS EN UNA VARIABLE LLAMADA SOUND
        let sound = URL (fileURLWithPath: Bundle.main.path(forResource: "problem", ofType: "mp3")!)
        
        do {
            //USAMOS LA VARIABLE CREADA ANTERIORMENTE DE TIPO AVAudioPlayer Y LE PASAMOS EL ARCHIVO RECOGIDO EN LA VARIABLE SOUND
            player = try AVAudioPlayer (contentsOf: sound)
        } catch let error as NSError {
            
            print("Hay un error \(error)")
            
        }
        //PREPARAMOS EL REPRODUCTOR PARA EMITIR SONIDOS
        player.prepareToPlay()
        //REPRODUCE EL ARCHIVO
        player.play()
        
        
    }

    //MÉTODO QUE REPRODUCE UN SONIDO DE MENOS DE 30 SEGUNDOS
    @IBAction func playSoundTwo(_ sender: AnyObject) {
        
        //SELECCIONAMOS EL SONIDO DE NUESTRO PROYECTO LOCAL
        let filePath = Bundle.main.path(forResource: "sound", ofType: "caf")
        //ALMACENAMOS EL SONIDO EN UNA VARIABLE DE TIPO NSURL
        let fileURL = URL(fileURLWithPath: filePath!)
        //CREAMOS UNA VARIABLE QUE INDIQUE EL TIPO DE SONIDO
        var soundID:SystemSoundID = 0
        //REPRODUCIMOS EL SONIDO
        AudioServicesCreateSystemSoundID(fileURL as CFURL, &soundID)
        AudioServicesPlaySystemSound(soundID)
        
    }
    
}

