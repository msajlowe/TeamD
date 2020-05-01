//
//  MapViewController.swift
//  ProjectP2TeamD
//
//  Created by Dax Jones on 4/30/20.
//  Copyright © 2020 Amanda Lowe. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: UIViewController, GMSMapViewDelegate {

    var name: String = ""
    var price: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

         let camera = GMSCameraPosition.camera(withLatitude: 36.1156, longitude: -97.0584, zoom: 15.0)
               let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
               
               mapView.delegate = self
               view = mapView
               
               //Adds 3 different Potential 
               let marker = GMSMarker()
               marker.position = CLLocationCoordinate2D(latitude: 36.1126, longitude: -97.0584)
               
               marker.title = "Driver A"
               marker.snippet = "price: ##.##"
               marker.map = mapView
               
               let marker2 = GMSMarker()
               marker2.position = CLLocationCoordinate2D(latitude: 36.1189, longitude: -97.0586)
               
               marker2.title = "Driver B"
               marker2.snippet = "price: ##.##"
        marker2.icon = GMSMarker.markerImage(with: .green)
               marker2.map = mapView
               
               let marker3 = GMSMarker()
               marker3.position = CLLocationCoordinate2D(latitude: 36.1155, longitude: -97.085)
               
               marker3.title = "Driver C"
               marker3.snippet = "price: ##.##"
               marker3.map = mapView
    }
    

    func mapView(_ mapView: GMSMapView, didTapInfoWindowOf marker: GMSMarker) {
        print("Tapped")
        name = marker.title ?? "No Name"
        price = marker.snippet ?? "00.00"
        
        performSegue(withIdentifier: "passengerToInfo", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let dest: DetailsViewController = segue.destination as! DetailsViewController
        
        dest.name = name
        dest.price = price
        
    }

}
