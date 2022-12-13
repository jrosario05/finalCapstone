import axios from 'axios';

export default {

get(address){
    return axios.get(`https://maps.googleapis.com/maps/api/geocode/json?address=${address}&key=AIzaSyAfpmZoqcNF2wvl3Bv1NhiLDa0kRBTnuj4`)
},



}
