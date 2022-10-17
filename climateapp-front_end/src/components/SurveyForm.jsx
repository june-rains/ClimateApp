import Form from 'react-bootstrap/Form';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Button from 'react-bootstrap/Button';
import EventServices from '../services/EventServices';
import '../index.css';
import { Component } from "react";
import { FormGroup } from 'react-bootstrap';
import { Link } from 'react-router-dom';
import { withRouter } from './withRouter';

class SurveyForm extends Component {
    constructor(props) {
        super(props);
        this.state = {
            name: '',
            netId: '',
            department: '',
            wellBeing: ''

        };

        this.changeNameHandler = this.changeNameHandler.bind(this);
        this.changeNetIDHandler = this.changeNetIDHandler.bind(this);
        this.changeDepartMentHandler = this.changeDepartMentHandler.bind(this);
        this.changeWellBeingHandler = this.changeWellBeingHandler.bind(this);
        this.saveOverAllReport = this.saveOverAllReport.bind(this);
    }

    saveOverAllReport = (event) => {
        event.preventDefault();
        let report = { name: this.state.name, netId: this.state.netId, department: this.state.department, wellBeing: this.state.wellBeing }
        console.log('report => ' + JSON.stringify(report));

        EventServices.createOverAllReport(report).then(res => {
            this.props.navigate('/');
        });
    }

    changeNameHandler = (event) => {
        this.setState({ name: event.target.value });
    }

    changeNetIDHandler = (event) => {
        this.setState({ netId: event.target.value });
    }

    changeDepartMentHandler = (event) => {
        this.setState({ department: event.target.value });
    }

    changeWellBeingHandler = (event) => {
        this.setState({ wellBeing: event.target.value });
    }

    render() {
        return (
            <>
                <Form onSubmit={this.handleSubmit}>
                    <Form.Group>
                        <Form.Label className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic' }}>What's your name?</Form.Label>
                        <Form.Text className="text-muted">
                            We'll never share your name with anyone else.
                        </Form.Text>
                        <Form.Control as="textarea" rows={1} placeholder="Eg: Jack" value={this.state.name} onChange={this.changeNameHandler} />
                    </Form.Group>
                    <br />

                    <Form.Group>
                        <Form.Label className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic' }}>What's your netID?</Form.Label>
                        <Form.Text className="text-muted">
                            We'll never share your netID with anyone else.
                        </Form.Text>
                        <Form.Control as="textarea" rows={1} placeholder="Eg: cl580" value={this.state.netId} onChange={this.changeNetIDHandler} />
                    </Form.Group>
                    <br />

                    <Form.Group>
                        <Form.Label className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic' }}>Which departement are you from?</Form.Label>
                        <Form.Control as="textarea" rows={1} placeholder="Eg: Electrical Computer Engineering" value={this.state.department} onChange={this.changeDepartMentHandler} />
                    </Form.Group>
                    <br />

                    <FormGroup>
                        <Form.Label className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic' }}>How is your feeling during this week?</Form.Label>
                        <Form.Select value={this.state.wellBeing} onChange={this.changeWellBeingHandler}>
                            <option>Select Your Choice</option>
                            <option value={"Good"}>Good</option>
                            <option value={"Normal"}>Normal</option>
                            <option value={"Bad"}>Bad</option>
                        </Form.Select>
                    </FormGroup>
                    <br />

                    <Row className="justify-content-md-center">
                        <Col md='auto'>
                            <Link to="/">
                                <Button variant="primary" onClick={this.saveOverAllReport}>
                                    Submit
                                </Button>
                            </Link>
                        </Col>
                    </Row>

                </Form>
            </>
        )
    }
}


export default withRouter(SurveyForm);

