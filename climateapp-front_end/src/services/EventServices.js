import axios from "axios";
const EVENT_API_BASE_URL = "http://vcm-27100.vm.duke.edu:8080/getAllEvents";
const EVENT_API_DETAIL_URL = "http://vcm-27100.vm.duke.edu:8080/getEventDetails";
class EventServices {
    getEvents() {
        return axios.get(EVENT_API_BASE_URL);
    }

    getEventDetail(id) {
        return axios.get(EVENT_API_DETAIL_URL, { params: { id: id } })
    }
}

export default new EventServices()