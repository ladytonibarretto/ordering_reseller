//
//  ResellerViewController.swift
//  Reseller
//
//  Created by Lady Barretto on 20/10/2016.
//  Copyright © 2016 Lady Toni Barretto. All rights reserved.
//

import UIKit
import GoogleMaps

class ResellerViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        loadShopMapMarkers()
        
        // Do any additional setup after loading the view.
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadShopMapMarkers(){
        _ = getShopsLocation()
        
//        iterate the branches
        
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 14.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        view = mapView
        
        
        // Creates a marker in the center of the map.
        var marker = [GMSMarker()]
        marker[0].position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker[0].title = "Sydney"
        marker[0].snippet = "Australia"
        marker[0].map = mapView
        
        marker.append(GMSMarker())
        marker[1].position = CLLocationCoordinate2D(latitude: -33.860143, longitude: 151.200129)
        marker[1].title = "Sydneyyyyyy"
        marker[1].snippet = "Australia"
        marker[1].map = mapView

    }
    
    func getShopsLocation(){
//        Call API to get all branches and return json
        
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
