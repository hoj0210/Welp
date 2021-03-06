import React from 'react'
import MarkerManager from '../../util/marker_manager';

class BusinessMap extends React.Component{
    constructor(props) {
        super(props)
    }
    componentDidMount(){
        const mapOptions = {
            center: { lat: 34.047467, lng: -118.245710},
            zoom: 12
        };

        this.map = new google.maps.Map(this.mapNode, mapOptions);
        debugger
        this.MarkerManager = new MarkerManager(this.map);
        this.MarkerManager.updateMarkers(this.props.businesses);
        $("#map-container").css("position","none !important");
    }

    componentDidUpdate(){
        const mapOptions = {
            center: { lat: 34.047467, lng: -118.245710},
            zoom: 12
        };

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