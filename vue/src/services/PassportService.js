import axios from 'axios';

export default {

//const res = await axios.delete('https://httpbin.org/delete', { data: { answer: 42 } });

breweryPassport(userId){
    return axios.get(`/passport/${userId}`)
},

deleteFromPassport(userId, beerId) {
    return axios.delete(`/passport/${userId}/${beerId}`)
},

addBeerToPassport(userId, beer){
    return axios.post(`passport/${userId}`, beer)
},
updateDrank(userId, beerId){
    return axios.put(`/passport/${userId}/${beerId}`)
},
getBeerFilter(userId){
    return axios.get(`passport/beer/${userId}`)
}


}