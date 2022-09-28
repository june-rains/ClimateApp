import { Component } from 'react';
import Card from 'react-bootstrap/Card';
import TimeStampWeekDay from './TimeStampWeekDay';
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';

class EventDetailCard extends Component {
    render() {
        return (
            <Container>
                <Row className="justify-content-md-center">
                    <Col md='auto'>
                        <Card style={{ width: '45rem', height: '25rem' }}>
                            <Card.Img variant="top" src={this.props.eventImage} />
                            <Card.Body>
                                <Card.Text>
                                    <span className="font-link" style={{ fontWeight: 'bold', textDecorationLine: 'underline' }}>{this.props.title}</span>
                                    <br />
                                    <TimeStampWeekDay time={this.props.starttime} />
                                </Card.Text>
                            </Card.Body>
                        </Card>
                    </Col>
                </Row>
            </Container>
        );
    }
}

export default EventDetailCard;