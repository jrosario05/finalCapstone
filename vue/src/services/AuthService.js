import axios from 'axios';

export default {

  login(user) {
    return axios.post('/login', user)
  },

  get(id){
    return axios.get(`users/${id}`)
  },

  register(user) {
    return axios.post('/register', user)
  }

}
