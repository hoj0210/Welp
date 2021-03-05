import React from 'react'

class BusinessMap extends React.Component{
    constructor(props) {
        super(props)
    }
    componentDidMount(){
        const mapOptions = {
            center: { lat: 34.047467, lng: -118.245710},
            zoom: 13
        };

        this.map = new google.maps.Map(this.mapNode, mapOptions);
    }

    render(){
        return(
            <div id="map-container" ref={map => this.mapNode = map }>

            </div>
        )
    }
}

export default BusinessMap