import axios from "axios";
const EVENT_API_BASE_URL = "http://vcm-29097.vm.duke.edu:8080/getAllEvents";
const EVENT_API_DETAIL_URL = "http://vcm-29097.vm.duke.edu:8080/getEventDetails";
class EventServices {
    getEvents() {
        return axios.get(EVENT_API_BASE_URL);
    }

    getEventDetail(id) {
        console.log("in get event detail")
        const config = {
            headers:{
                id: id
            }
        };
        return axios.get(EVENT_API_DETAIL_URL, config);
    }
}

export default new EventServices()