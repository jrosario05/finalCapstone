import axios from 'axios';

export default {


deleteFromPassport(userId, beerId) {
    return axios.delete(`/passport/${userId}/${beerId}`)
},



}