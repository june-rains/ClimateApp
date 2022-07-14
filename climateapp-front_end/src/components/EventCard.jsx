import React, { Component } from 'react';
import { Row } from 'react-bootstrap';
import Button from 'react-bootstrap/Button';
import Card from 'react-bootstrap/Card';
import ClampLines from 'react-clamp-lines';
import TimeStamp from './TimeStamp';

class EventCard extends Component {
    render() {
        return (
            <Card style={{ width: '18rem', height: '30rem' }}>
                <Card.Img variant="top" src={this.props.eventImage} />
                <Card.Body>
                    <Card.Title >
                    <ClampLines
                        text={this.props.eventSummary}
                        //id="really-unique-id"
                        lines={2}
                        ellipsis="..."
                        //moreText="Expand"
                        //lessText="Collapse"
                        //className="custom-class"
                        //innerElement="p"
                        buttons={false}
                    />
                        </Card.Title>
                    <Card.Text>

                        <TimeStamp time={this.props.startTime} def={"Start Time: "}></TimeStamp>
                        <TimeStamp time={this.props.endTime} def={"End Time: "}></TimeStamp>
                        <Row>
                            Location: {this.props.location}
                        </Row>
                    </Card.Text>
                    <Button variant="primary">Go somewhere</Button>
                </Card.Body>
            </Card>
        );
    }
}

export default EventCard;