import React from 'react'
import MarkerManager from '../../util/marker_manager';

class BusinessMap extends React.Component{
    constructor(props) {
        super(props)
    }
    componentDidMount(){
        let mapOptions;
        if (Array.isArray(this.props.businesses)) {
                mapOptions = {
                center: { lat: this.props.businesses[0].latitude, lng: this.props.businesses[0].longitude},
                zoom: 12
            };
        } else {
            debugger
            mapOptions = {
                center: { lat: this.props.businesses.latitude, lng: this.props.businesses.longitude},
                zoom: 12
            }
        }

        this.map = new google.maps.Map(this.mapNode, mapOptions);
        debugger
        this.MarkerManager = new MarkerManager(this.map);
        this.MarkerManager.updateMarkers(this.props.businesses);
        $("#map-container").css("position","none !important");
    }

    componentDidUpdate(){
        debugger
        let mapOptions
        if (Array.isArray(this.props.businesses)) {
                mapOptions = {
                center: { lat: this.props.businesses[0].latitude, lng: this.props.businesses[0].longitude},
                zoom: 12
            };
        } else {
            debugger
            mapOptions = {
                center: { lat: this.props.businesses.latitude, lng: this.props.businesses.longitude},
                zoom: 12
            }
        }
        

        this.map = new google.maps.Map(this.mapNode, mapOptions);
        debugger
        this.MarkerManager = new MarkerManager(this.map);
        this.MarkerManager.updateMarkers(this.props.businesses)
        $("#map-container").css("position","none !important");
    }

    render(){
        return(
            <div id="map-container" ref={map => this.mapNode = map }>

            </div>
        )
    }
}

export default BusinessMap