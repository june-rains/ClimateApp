import React from "react";
import { useParams } from "react-router-dom";
import { Component } from "react";
import EventServices from '../services/EventServices';
import { Col, Container, Row } from 'react-bootstrap';
import EventCard from './EventCard';

export default function EventDetail() {
    let params = useParams();

    return (
        <div>
            <EventDetailShow id={params.id} />
        </div>
    );
}


class EventDetailShow extends Component {
    constructor(props) {
        super(props)

        this.state = {
            events: [],
        }
    }

    componentDidMount() {
        const id = this.props.id;
        EventServices.getEventDetail(id).then((res) => {
            this.setState({ events: res.data });
        })
    }

    render() {

        // let eventCards = this.state.events.map(event => {
        //     if (event.image) {
        //         return (
        //             <Col style={{ marginTop: '20px' }}>
        //                 <EventCard eventID={event.id} eventSummary={event.summary} eventImage={event.image} startTime={event.start_timestamp} endTime={event.end_timestamp} location={event.location.address} />
        //             </Col>
        //         )
        //     } else {
        //         return (
        //             <Col style={{ marginTop: '20px' }}>
        //                 <EventCard eventID={event.id} eventSummary={event.summary} eventImage={"http://calendar.duke.edu/packs/media/images/v2016/featured-event-4-52d98822329df448240dfc0cddbe1ab1.png"} startTime={event.start_timestamp} endTime={event.end_timestamp} location={event.location.address} />
        //             </Col>
        //         )
        //     }
        // }
        // )
        return (
            <Container fluid>
                <Row>
                    {this.props.id}
                    {/* {this.state.events} */}
                </Row>
            </Container>

        );
    }
}
