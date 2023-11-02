//
//  number2.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 10/21/23.
// This is the map screen


import SwiftUI
import MapKit



struct number2: View {
    
    func openMap(Address:String){
        UIApplication.shared.openURL(NSURL(string: "http://maps.apple.com/?address=\(Address)")! as URL)
    }
    
    @State private var cameraPosition: MapCameraPosition = .region(.userRegion)

    
//    these are going to be the brown line train stops
    
    let Kimball = CLLocationCoordinate2D(latitude: 41.967354, longitude: -87.713310)
    let Kedzie = CLLocationCoordinate2D(latitude: 41.966046, longitude: -87.713709)
    let Francisco = CLLocationCoordinate2D(latitude: 41.966724, longitude: -87.701308)
    let Rockwell = CLLocationCoordinate2D(latitude: 41.966724, longitude: -87.701308)
    let Western = CLLocationCoordinate2D(latitude: 41.966365, longitude: -87.688280)
    let Damen = CLLocationCoordinate2D(latitude: 41.966748, longitude: -87.678224)
    let Montrose = CLLocationCoordinate2D(latitude: 41.961756, longitude: -87.675677)
    let IrvingPark = CLLocationCoordinate2D(latitude: 41.954521, longitude: -87.674190)
    let Addison = CLLocationCoordinate2D(latitude: 41.947620, longitude: -87.653666)
    let Paulina = CLLocationCoordinate2D(latitude: 41.943623, longitude: -87.670983)
    let Southport = CLLocationCoordinate2D(latitude: 41.943578, longitude: -87.664748)
    let Belmont = CLLocationCoordinate2D(latitude: 41.939751, longitude: -87.653738)
    let Wellington = CLLocationCoordinate2D(latitude: 41.936682, longitude: -87.653360)
    let Diversey = CLLocationCoordinate2D(latitude: 41.932731, longitude: -87.653694)
    let Fullerton = CLLocationCoordinate2D(latitude: 41.925645, longitude: -87.652345)
    let Armitage = CLLocationCoordinate2D(latitude: 41.918110, longitude: -87.652977)
    let Sedgwick = CLLocationCoordinate2D(latitude: 41.910481, longitude:  -87.638840)
    let Chicago = CLLocationCoordinate2D(latitude: 41.896546, longitude: -87.634198)
    let MerchandiseMart = CLLocationCoordinate2D(latitude: 41.888328, longitude: -87.635907)
    let ClarkLake = CLLocationCoordinate2D(latitude: 41.885737, longitude: -87.630824)
    let WashingtonWells = CLLocationCoordinate2D(latitude: 41.883765, longitude: -87.633979)
    let Quincy = CLLocationCoordinate2D(latitude: 41.878723, longitude: -87.633591)
    let LaSalleVanBuren = CLLocationCoordinate2D(latitude: 41.876629, longitude: -87.631440)
    let HaroldWashingtonLibraryStateVanBuren = CLLocationCoordinate2D(latitude: 41.876921, longitude: -87.628358)
    let AdamsWabash = CLLocationCoordinate2D(latitude: 41.879507, longitude: -87.626726)
    let MadisonWabash = CLLocationCoordinate2D(latitude: 41.882089, longitude: -87.626118)
    let RandolphWabash = CLLocationCoordinate2D(latitude: 41.884659, longitude: -87.625402)
    
    
    var body: some View {
        
        
        let markerArray = [Marker("Kimball" , coordinate: Kimball),
                         Marker("Kedzie ", coordinate: Kedzie),
                         Marker("Francisco ",coordinate: Francisco),
                         Marker("Rockwell", coordinate: Rockwell),
                         Marker("Western", coordinate: Western),
                         Marker("Damen ",coordinate: Damen),
                         Marker("Montrose",  coordinate: Montrose),
                         Marker("IrvingPark ", coordinate: IrvingPark),
                         Marker("Addison ",coordinate: Addison),
                         Marker("Paulina", coordinate: Paulina)]
        
        
        Map(position: $cameraPosition, bounds: MapCameraBounds[markerArray]) {
//            Button(action:{
//                openMap(Address: "2125 N. Melvina Ave")
//            })
//            Marker("Kimball" , coordinate: Kimball)
//            Marker("Kedzie ", coordinate: Kedzie)
//            Marker("Francisco ",coordinate: Francisco)
//            Marker("Rockwell", coordinate: Rockwell)
//            Marker("Western", coordinate: Western)
//            Marker("Damen ",coordinate: Damen)
//            Marker("Montrose",  coordinate: Montrose)
//            Marker("IrvingPark ", coordinate: IrvingPark)
//            Marker("Addison ",coordinate: Addison)
//            Marker("Paulina", coordinate: Paulina) //Up to 10 markers Before issues
            
            
//            Marker("Southport ", coordinate: Southport)
//            Marker("Belmont ",coordinate: Belmont)
//            Marker("Wellington",  coordinate: Wellington)
//            Marker("Diversey ", coordinate: Diversey)
//            Marker("Fullerton ",coordinate: Fullerton)
//            Marker("Armitage", coordinate: Armitage)
//            Marker("Sedgwick", coordinate: Sedgwick)
//            Marker("Chicago ",coordinate: Chicago)
//            Marker("MerchandiseMart", coordinate: MerchandiseMart)
//            Marker("ClarkLake ", coordinate: ClarkLake)
//            Marker("WashingtonWells ",coordinate: WashingtonWells)
//            Marker("Quincy", coordinate: Quincy)
//            Marker("LaSalleVanBuren", coordinate: LaSalleVanBuren )
//            Marker("HaroldWashingtonLibraryStateVanBuren ", coordinate: HaroldWashingtonLibraryStateVanBuren)
//            Marker("AdamsWabash", coordinate: AdamsWabash)
//            Marker("MadisonWabash ", coordinate: MadisonWabash)
//            Marker("RandolphWabash ",coordinate: RandolphWabash)
        }
    }
}

extension CLLocationCoordinate2D{
    static var userLocation: CLLocationCoordinate2D {
        return .init(latitude: 41.879507, longitude: -87.626118)
    }
}

extension MKCoordinateRegion {
    static var userRegion: MKCoordinateRegion {
        return .init(center: .userLocation,
        latitudinalMeters: 200,
        longitudinalMeters: 200)
    }
}


#Preview {
    number2()
}
