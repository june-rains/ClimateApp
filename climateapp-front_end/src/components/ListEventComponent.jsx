import React, { Component } from 'react';
import { Col, Container, Row } from 'react-bootstrap';
import EventServices from '../services/EventServices';
import EventCard from './EventCard';


class ListEventComponent extends Component {
    constructor(props) {
        super(props)

        this.state = {
            events: [],
        }
    }

    componentDidMount() {
        EventServices.getEvents().then((res) => {
            this.setState({ events: res.data });
        })
    }


    render() {
        let eventCards = this.state.events.map(event => {
            if (event.image) {
                return (
                    <Col style={{ marginTop: '20px' }}>
                        <EventCard eventID={event.id} eventSummary={event.summary} eventImage={event.image} startTime={event.start_timestamp} endTime={event.end_timestamp} location={event.location.address} />
                    </Col>
                )
            } else {
                return (
                    <Col style={{ marginTop: '20px' }}>
                        <EventCard eventID={event.id} eventSummary={event.summary} eventImage={"https://1000logos.net/wp-content/uploads/2017/11/Duke-University-symbol.jpg"} startTime={event.start_timestamp} endTime={event.end_timestamp} location={event.location.address} />
                    </Col>
                )
            }
        }
        )
        return (

            <Container fluid>
                <Row>
                    {eventCards}
                </Row>
            </Container>

        );
    }
}

export default ListEventComponent;