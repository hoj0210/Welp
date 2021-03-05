
export default class MarkerManager {
    constructor(map) {
        this.map = map;
        this.markers = {};
        this.createMarkerFromBusiness = this.createMarkerFromBusiness.bind(this);
    }

    updateMarkers(businesses) {
        // let markers = this.markers
        const map = this.map
        debugger
        if (Array.isArray(businesses)) {
            for (let i = 0; i < businesses.length; i++) {
                    debugger
                    this.createMarkerFromBusiness(businesses[i], map, i);
                        
                }
        } else {
            this.createMarkerFromBusiness(businesses, map, null)
        }
        
        
        console.log("time to update");
    }

    createMarkerFromBusiness(business, map, num) {
        debugger
        if (num === null) {
            const marker = new google.maps.Marker({
            position: { lat: business.latitude, lng: business.longitude },
            map: map,
            title: business.name
        })
        } else {
            const marker = new google.maps.Marker({
                position: { lat: business.latitude, lng: business.longitude },
                label: (num + 1).toString(),
                map: map,
                title: business.name
            }) 
        }
        
        debugger
        // this.markers[business.id] = marker
    }
}