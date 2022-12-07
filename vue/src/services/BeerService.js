import axios from 'axios';

export default{
    listBeer(){
        return axios.get('/beers')
    },

    beerByBrewery(id){
        return axios.get(`/breweries/${id}/beers`)
    },
    beerPassport(userId, BreweryId){
        return axios.get(`/passport/brewery/${userId}/${BreweryId}`)
    }
}