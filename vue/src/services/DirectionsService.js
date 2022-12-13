import axios from 'axios';

export default {

route(object){
    return axios.get(`https://maps.googleapis.com/maps/api/directions/json?origin=${orgin}`, object)
}



}