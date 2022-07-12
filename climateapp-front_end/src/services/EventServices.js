import axios from "axios";
// const EVENT_API_BASE_URL = "http://vcm-27100.vm.duke.edu:8080/getEventDetails";
const EVENT_API_BASE_URL = "http://vcm-27100.vm.duke.edu:8080/getAllEvents";
class EventServices {
    getEvents() {
        return axios.get(EVENT_API_BASE_URL);
    }
}

export default new EventServices()