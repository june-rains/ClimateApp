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
            return (
                <Col>
                    <EventCard eventSummary={event.summary} eventImage={event.image} />
                </Col>
            )
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