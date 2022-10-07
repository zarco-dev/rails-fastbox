// import { Controller } from "@hotwired/stimulus";
// import mapboxgl from "mapbox-gl";

// // Connects to data-controller="tracking"
// export default class extends Controller {

//   static targets = ["maps", "address", "mapspin"]

//   connect() {
//     // this.mapsTarget.classList.add("ocultar-maps");
//   }

// //   mapss(event) {
// //     const result = this.addressTarget;
// //     const maps = this.mapspinTarget;
// //     const texto = "medellin"
// //     console.log(result.innerText);
// //     // this.mapsTarget.classList.remove("ocultar-maps");
// //     // event.preventDefault();
// //     fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${texto}.json?access_token=pk.eyJ1IjoiemFyY28tZGV2IiwiYSI6ImNsN2ZmZWd2YjA5cXA0MHFlcjZiMTdnbTUifQ.hj9Nj77357hgC9y7C7ZDUQ`)
// //     .then(response => response.json())
// //     .then((data) => {
// //       console.log(data);
// //       maps.insertAdjacentHTML("beforeend", `<h2>${data.features[0].center}</h2>`);

// //       mapboxgl.accessToken = "pk.eyJ1IjoiemFyY28tZGV2IiwiYSI6ImNsN2ZmZWd2YjA5cXA0MHFlcjZiMTdnbTUifQ.hj9Nj77357hgC9y7C7ZDUQ";
// //       const map = new mapboxgl.Map({
// //         container: "map",
// //         style: "mapbox://styles/mapbox/streets-v9",
// //         center: [ data.features[0].center[0], data.features[0].center[1] ],
// //         zoom: 16});
// //         new mapboxgl.Marker()
// //         .setLngLat([ data.features[0].center[0], data.features[0].center[1] ])
// //         .addTo(map);
// //       });
// //       maps.innerHTML = '';
// //   }
// // }
