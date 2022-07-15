import React, { Component } from 'react';
import Button from 'react-bootstrap/Button';
import Card from 'react-bootstrap/Card';
import ClampLines from 'react-clamp-lines';
import TimeStamp from './TimeStamp';
import { Link } from "react-router-dom";



class EventCard extends Component {
    render() {
        return (
            <Card style={{ width: '18rem', height: '30rem' }}>
                <Card.Img variant="top" src={this.props.eventImage} />
                <Card.Body>
                    <Card.Title>
                        <ClampLines
                            text={this.props.eventSummary}
                            lines={2}
                            ellipsis="..."
                            buttons={false} />
                    </Card.Title>
                    <Card.Text>

                        <TimeStamp time={this.props.startTime} def={"Start Time: "}></TimeStamp>
                        <br />
                        <TimeStamp time={this.props.endTime} def={"End Time: "}></TimeStamp>
                        <br />
                        Location: {this.props.location}
                    </Card.Text>
                </Card.Body>
                    <div style={{textAlign:'center', marginBottom: '20px'}}>
                    <Link to={`/eventsCatalog/${this.props.eventID}`}><Button variant="primary" >More Details</Button></Link>
                    </div>
            </Card>
        );
    }
}

export default EventCard;