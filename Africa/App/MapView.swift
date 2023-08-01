//
//  MapView.swift
//  Africa
//
//  Created by Kaloyan Petkov on 29.07.23.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        //MARK: - Basic Map
//        Map(coordinateRegion: $region)
        
        //MARK: - Advanced Map
        Map(coordinateRegion: $region, annotationItems: locations) { location in
            // (A) Pin: Old Style (always static)
            // MapPin(coordinate: location.location, tint: .accentColor)
            
            // (B) Marker: New Style (alwayis static)
            // MapMarker(coordinate: location.location, tint: .accentColor)
            
            // (C) Cutom Basic Annotation: (it could be interactive)
            MapAnnotation(coordinate: location.location) {
                MapAnnotationView(location: location)
            }
        } //: Map
        .overlay(alignment: .top) {
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                    
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    
                    Divider()
                } //: VStack
                .padding(.top, 5)
            } //: HStack
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(.black.opacity(0.6))
            .cornerRadius(8)
            .padding()
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
