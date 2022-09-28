import { Component } from "react";
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import '../index.css';


class EventDescription extends Component {
    render() {
        return (
            <Container>
                <Row className="justify-content-md-center">
                    <Col md='auto'>
                        <p className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic' }}>{this.props.description}</p>
                    </Col>
                </Row>
            </Container>
        )
    }
}


export default EventDescription;
