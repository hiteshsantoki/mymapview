//
//  ViewController.swift
//  mapview
//
//  Created by Cronabit 1 on 13/10/17.
//  Copyright © 2017 Cronabit 1. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController{
    @IBOutlet weak var bigMap: MKMapView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(22.2949163,70.7583113)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        bigMap.setRegion(region, animated: true)
        
        let annotaion = MKPointAnnotation()
        
        annotaion.coordinate = location
        annotaion.title = "CRONABIT TEC."
        annotaion.subtitle = "NAKSHTRA 5"
        
        bigMap.addAnnotation(annotaion)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    }
