import axios from 'axios';

export default {

listBreweries() {
   return axios.get('/breweries')
},

listBeer() {
    return axios.get('/beer')  //SHOULD THIS BY BREWERY??
 },

breweryById(id) {
    return axios.get(`/breweries/${id}`)
},

}