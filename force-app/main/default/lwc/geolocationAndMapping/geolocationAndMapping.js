import { LightningElement } from 'lwc';
import { loadScript, loadStyle } from 'lightning/platformResourceLoader';
import MAPBOX from '@salesforce/resourceUrl/mapbox';
import LEAFLET from '@salesforce/resourceUrl/leaflet';

const mapboxAccessToken = 'sk.eyJ1Ijoic2Vub3Jnb29iZSIsImEiOiJja3ptdXJpZnIxZWJ1MnNrZTlpNXdtbXZ1In0.JELBx5rvCHUzPbGjFaXuJQ';

export default class GeolocationAndMapping extends LightningElement {
    connectedCallback() {
        Promise.all([
            loadStyle(this, LEAFLET + '/leaflet.css'),
            loadStyle(this, MAPBOX + '/mapbox/mapbox.css'),
            loadScript(this, LEAFLET + '/leaflet.js'),
            loadScript(this, MAPBOX + '/mapbox/mapbox.js')
        ])
            .then(() => {
                L.mapbox.accessToken = 'pk.eyJ1Ijoic2Vub3Jnb29iZSIsImEiOiJja3piaG1xNzQwZGcwMndudDRlYmJ1cDYwIn0.urAEpBWAt-IyNHyIWWdxyA';
                const el = this.template.querySelector('.map');                
                var map = L.mapbox.map(el)
                    .setView([12.9716, 77.5946], 9)
                    .addLayer(L.mapbox.styleLayer('mapbox://styles/senorgoobe/ckzpicdkd000714pa8q7aghug'));
            })
            .catch(error => {
                console.log(error)
            })
    }
}