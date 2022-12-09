import axios from 'axios';

export default {

listBreweries() {
   return axios.get('/breweries')
},

breweryById(id) {
    return axios.get(`/breweries/${id}`)
},




}