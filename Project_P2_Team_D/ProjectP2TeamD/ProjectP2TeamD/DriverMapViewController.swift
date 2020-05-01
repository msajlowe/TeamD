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
    
    var name: String = ""
    var price: String = ""
    var timeToTravel = 0.0
    var customerRate = 0.0
    var customers: [Double] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeToTravel = 4
        customerRate = 1.5
        customers.append(timeToTravel * customerRate)
        
        timeToTravel = 3
        customerRate = 1.9
        customers.append(timeToTravel * customerRate)
        
        timeToTravel = 8
        customerRate = 2.3
        customers.append(timeToTravel * customerRate)
        

        let camera = GMSCameraPosition.camera(withLatitude: 36.1156, longitude: -97.0584, zoom: 15.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        
        mapView.delegate = self
        
        view = mapView
        
        //Adds 3 different Potential
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 36.1126, longitude: -97.0584)
        
        marker.title = "Passenger A"
        marker.snippet = "Tap here to accept"
       
        marker.map = mapView
        marker.icon = GMSMarker.markerImage(with: .green)
        
        
    }
    
    func createMarkers(){
        var highest = customers[0]
        
        
        for i in 0...customers.count{
            //Method would be used to creat markers based on customer locations while comparing their price
            
            if(customers[i] > highest){
                highest = customers[i]
                //set color of marker to green
            }
        }
    }
    

    func mapView(_ mapView: GMSMapView, didTapInfoWindowOf marker: GMSMarker) {
        print("Tapped")
        name = marker.title ?? "No Name"
        price =  "Total Pay: ##.##"
        
        performSegue(withIdentifier: "driverToInfo", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let dest: DetailsViewController = segue.destination as! DetailsViewController
        
        dest.name = name
        dest.price = price
        
    }
    
}
