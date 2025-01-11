import SwiftUI
import MapKit

//forma de enbeber vista de UIkIT de un objeto vista de swiftUI
struct MapView: UIViewRepresentable {
    //retornar vista de UIKIT
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    //Vista para actualizar
    //uiView el objeto mapa que creamos en el makeUIView
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 40.432100, longitude: -3.7400)
        let span = MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 15)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews:
    PreviewProvider {
    static var previews: some View{
        MapView()
    }
}
