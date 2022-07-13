import React, { Component } from 'react'
import { Link } from "react-router-dom";
import NavBar from './NavBar';
import './Home.css'
import Button from 'react-bootstrap/Button';
import { Col, Container, Row } from 'react-bootstrap';


export default class Home extends Component {
    render() {
        return (
            <div>
                <NavBar />
                <Container>
                    <Row className="justify-content-center">
                        <Col xs lg="2">
                            <Link to="/page1">
                                <Button variant="primary" size="lg">
                                    Go to Page 1
                                </Button>
                            </Link>
                        </Col>
                    </Row>
                </Container>
            </div>
        )
    }
}
