
export default class MarkerManager {
    constructor(map) {
        this.map = map;
        this.markers = {};
    }

    updateMarkers(businesses) {
        // let markers = this.markers
        const map = this.map
        debugger
        for (let i = 0; i < businesses.length; i++) {
            const myLatLng = {lat: businesses[i].latitude, lng: businesses[i].longitude};
            const map = new google.maps.Map(document.getElementById("map-container"), {
                center: myLatLng,
                zoom: 13,
            })
            // new google.maps.Marker({
            //     position: myLatLng,
            //     map,
            // })
        }
        // businesses.forEach(business => {
        //     const marker = new google.maps.Marker({
        //         position: new google.maps.LatLng(business.latitude, business.longitude),
        //         map: map
        //     })
        //     debugger
        //     markers.push(marker);
        // })
        console.log("time to update");
    }

    
}