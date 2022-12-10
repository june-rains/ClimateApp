import React from "react";
import { useParams } from "react-router-dom";
import { Component } from "react";
import EventServices from '../services/EventServices';
import { Container, Row } from 'react-bootstrap';
import EventBreadcrumb from "./EventBreadCrumb";
import EventDetailCard from "./EventDetailCard";
import EventDescription from "./EventDescription";
import NavBar from "./NavBar";

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
        }).catch((error) => {
            console.log(error);
        })
    }

    render() {

        var image = this.state.events.image;
        var eventDetailCard = null;
        if (image) {
            eventDetailCard = <EventDetailCard eventImage={this.state.events.image} title={this.state.events.summary} sponsor={this.state.events.sponsor} starttime={this.state.events.start_timestamp} />;
        } else {
            eventDetailCard = <EventDetailCard eventImage={"http://calendar.duke.edu/packs/media/images/v2016/featured-event-4-52d98822329df448240dfc0cddbe1ab1.png"} title={this.state.events.summary} sponsor={this.state.events.sponsor} starttime={this.state.events.start_timestamp} />;
        }
        return (
            <>
                <NavBar />
                <Container fluid>
                    <EventBreadcrumb eventTitle={this.state.events.summary} />
                    <Row>
                        {eventDetailCard}
                    </Row>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <EventDescription description={this.state.events.description} />
                </Container>
            </>

        );
    }
}
