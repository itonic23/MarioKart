//
//  MarioKartViewController.swift
//  MarioKart
//
//  Created by Kanav Gupta on 3/8/19.
//  Copyright © 2019 trishi2002. All rights reserved.
//

import UIKit

class MarioKartViewController: UIViewController {

    @IBOutlet weak var KartView0: UIImageView!
    @IBOutlet weak var KartView1: UIImageView!
    @IBOutlet weak var KartView2: UIImageView!
    @IBOutlet weak var KartView3: UIImageView!
    @IBOutlet weak var KartView4: UIImageView!
    
    var startingPointKartView0 = CGPoint()
    var startingPointKartView1 = CGPoint()
    var startingPointKartView2 = CGPoint()
    var startingPointKartView3 = CGPoint()
    var startingPointKartView4 = CGPoint()
    
    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {
        
        let location = sender.location(in: view)
        print("Location: x: \(location.x), y: \(location.y)")
        
        let kartView = sender.view!
        kartView.center = location
        

    }
    
    @IBAction func didPunchKartView(_ sender: UIPinchGestureRecognizer) {
        let scale = sender.scale
        print ("scale: \(scale)")
        
        let kartView = sender.view!
        kartView.transform =
            CGAffineTransform(scaleX: scale, y:
            scale)
    }
    
    @IBAction func didRotateKartView(_ sender: UIRotationGestureRecognizer) {
        
        let rotation = sender.rotation
        print("rotation: \(rotation)")
        
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(rotationAngle: rotation)
    }
    
    @IBAction func didTapKartView(_ sender: UITapGestureRecognizer) {
        print("Double tap recognized")
        
        let kartView = sender.view!
        
        UIView.animate(withDuration: 0.8){
            kartView.center.x += 200
        }
       
        
    }
    @IBAction func didLongPressBackground(_ sender: UILongPressGestureRecognizer){
        UIView.animate(withDuration : 0.8){
            self.KartView0.center=self.startingPointKartView0
            self.KartView1.center=self.startingPointKartView1
            self.KartView2.center=self.startingPointKartView2
            self.KartView3.center=self.startingPointKartView3
            self.KartView4.center=self.startingPointKartView4
            
            self.KartView0.transform = CGAffineTransform.identity
            self.KartView1.transform = CGAffineTransform.identity
            self.KartView2.transform = CGAffineTransform.identity
            self.KartView3.transform = CGAffineTransform.identity
            self.KartView4.transform = CGAffineTransform.identity
            


        }


    }
    override func viewDidLoad() {
        super.viewDidLoad()

        startingPointKartView0 = KartView0.center
        startingPointKartView1 = KartView1.center
        startingPointKartView2 = KartView2.center
        startingPointKartView3 = KartView3.center
        startingPointKartView4 = KartView4.center
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
