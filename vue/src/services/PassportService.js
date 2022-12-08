import axios from 'axios';

export default {


deleteFromPassport(userId, beer) {
    return axios.delete(`/passport/${userId}`,beer)
},



}