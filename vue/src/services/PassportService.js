import axios from 'axios';

export default {

//const res = await axios.delete('https://httpbin.org/delete', { data: { answer: 42 } });

// res.data.json; // { answer: 42 }
deleteFromPassport(userId, beerId) {
    return axios.delete(`/passport/${userId}`, { data: { beerId }})
},



}