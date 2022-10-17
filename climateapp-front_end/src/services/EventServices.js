import axios from "axios";
const EVENT_API_BASE_URL = "http://vcm-29097.vm.duke.edu:8080/getAllEvents";
const EVENT_API_DETAIL_URL = "http://vcm-29097.vm.duke.edu:8080/getEventDetails";
const EVENT_API_CREATREPORT_URL = "http://vcm-29097.vm.duke.edu:8080/creatOverAllReport"
const EVENT_API_GETREPORT_URL = "http://vcm-29097.vm.duke.edu:8080/getAllOverAllReports"


class EventServices {
    getEvents() {
        return axios.get(EVENT_API_BASE_URL);
    }

    getEventDetail(id) {
        const config = {
            headers: {
                id: id
            }
        };
        return axios.get(EVENT_API_DETAIL_URL, config);
    }

    createOverAllReport(report) {
        return axios.post(EVENT_API_CREATREPORT_URL, report);
    }

    getOverallReports() {
        return axios.get(EVENT_API_GETREPORT_URL);
    }
}

export default new EventServices()