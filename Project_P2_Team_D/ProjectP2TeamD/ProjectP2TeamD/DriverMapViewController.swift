//
//  DriverMapViewController.swift
//  ProjectP2TeamD
//
//  Created by Dax Jones on 4/30/20.
//  Copyright © 2020 Amanda Lowe. All rights reserved.
//

import UIKit
import GoogleMaps

class DriverMapViewController: UIViewController, GMSMapViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        let camera = GMSCameraPosition.camera(withLatitude: 36.1156, longitude: -97.0584, zoom: 15.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        
        view = mapView
        
        //Adds 3 different Potential
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 36.1126, longitude: -97.0584)
        
        marker.title = "Passenger A"
        marker.snippet = "Potential Earning: ##.##"
        marker.map = mapView
        
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2D(latitude: 36.1189, longitude: -97.0586)
        
        marker2.title = "Passenger B"
        marker2.snippet = "Potential Earning: ##.##"
        marker2.map = mapView
        
        let marker3 = GMSMarker()
        marker3.position = CLLocationCoordinate2D(latitude: 36.1155, longitude: -97.085)
        
        marker3.title = "Passenger C"
        marker3.snippet = "Potential Earning: ##.##"
        marker3.map = mapView
    }
    

    func mapView(_ mapView: GMSMapView, didTapAt cooridinate: CLLocationCoordinate2D){
        
        
    }

}
