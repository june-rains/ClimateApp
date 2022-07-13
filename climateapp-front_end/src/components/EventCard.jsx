import React, { Component } from 'react';
import Button from 'react-bootstrap/Button';
import Card from 'react-bootstrap/Card';

class EventCard extends Component {
    render() {
        return (
            <Card style={{ width: '18rem' }}>
                <Card.Img variant="top" src={this.props.eventImage} />
                <Card.Body>
                    <Card.Title>{this.props.eventSummary}</Card.Title>
                    <Card.Text>
                        {this.props.eventSummary}
                    </Card.Text>
                    <Button variant="primary">Go somewhere</Button>
                </Card.Body>
            </Card>
        );
    }
}

export default EventCard;