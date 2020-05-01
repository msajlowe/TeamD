//
//  MapViewController.swift
//  ProjectP2TeamD
//
//  Created by Dax Jones on 4/30/20.
//  Copyright © 2020 Amanda Lowe. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

         let camera = GMSCameraPosition.camera(withLatitude: 36.1156, longitude: -97.0584, zoom: 15.0)
               let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
               
               view = mapView
               
               
               let marker = GMSMarker()
               marker.position = CLLocationCoordinate2D(latitude: 36.1126, longitude: -97.0584)
               
               marker.title = "Driver A"
               marker.snippet = "price: ##.##"
               marker.map = mapView
               
               let marker2 = GMSMarker()
               marker2.position = CLLocationCoordinate2D(latitude: 36.1189, longitude: -97.0586)
               
               marker2.title = "Driver B"
               marker2.snippet = "price: ##.##"
               marker2.map = mapView
               
               let marker3 = GMSMarker()
               marker3.position = CLLocationCoordinate2D(latitude: 36.1155, longitude: -97.085)
               
               marker3.title = "Driver C"
               marker3.snippet = "price: ##.##"
               marker3.map = mapView
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
