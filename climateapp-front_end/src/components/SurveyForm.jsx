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
            department: '',
            wellBeing: '',
            knowing: '',
            connection: '',
            welcome: '',
            respectStu: '',
            respectStaff: '',
            matter: '',
            happyChoice: '',

        };

        this.changeNameHandler = this.changeNameHandler.bind(this);
        this.changeNetIDHandler = this.changeNetIDHandler.bind(this);
        this.changeDepartMentHandler = this.changeDepartMentHandler.bind(this);
        this.changeWellBeingHandler = this.changeWellBeingHandler.bind(this);
        this.changeKnowingHandler = this.changeKnowingHandler.bind(this);
        this.changeConnectionHandler = this.changeConnectionHandler.bind(this);
        this.changeWelcomeHandler = this.changeWelcomeHandler.bind(this);
        this.changeRespectStuHandler = this.changeRespectStuHandler.bind(this);
        this.changeRespectStaffHandler = this.changeRespectStaffHandler.bind(this);
        this.changeMatterHandler = this.changeMatterHandler.bind(this);
        this.changeHappyChoiceHandler = this.changeHappyChoiceHandler.bind(this);
        this.saveOverAllReport = this.saveOverAllReport.bind(this);
    }

    saveOverAllReport = (event) => {
        event.preventDefault();
        let report = { name: this.props.Name, netId: this.props.NetID, department: this.state.department, wellBeing: this.state.wellBeing, knowing: this.state.knowing, connection: this.state.connection, welcome: this.state.welcome, respectStu: this.state.respectStu, respectStaff: this.state.respectStaff, matter: this.state.matter, happyChoice: this.state.happyChoice }
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

    changeKnowingHandler = (event) => {
        this.setState({ knowing: event.target.value });
    }

    changeConnectionHandler = (event) => {
        this.setState({ connection: event.target.value });
    }

    changeWelcomeHandler = (event) => {
        this.setState({ welcome: event.target.value });
    }

    changeRespectStuHandler = (event) => {
        this.setState({ respectStu: event.target.value });
    }

    changeRespectStaffHandler = (event) => {
        this.setState({ respectStaff: event.target.value });
    }

    changeMatterHandler = (event) => {
        this.setState({ matter: event.target.value });
    }

    changeHappyChoiceHandler = (event) => {
        this.setState({ happyChoice: event.target.value });
    }

    changeHandler = (event) => {
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
                        <Form.Label className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic' }}>Which departement are you from?</Form.Label>
                        <Form.Select value={this.state.department} onChange={this.changeDepartMentHandler}>
                            <option>Select Your Choice</option>
                            <option value={"ECE"}>ECE</option>
                            <option value={"CS"}>CS</option>
                            <option value={"Civil Engineering"}>Civil Engineering</option>
                            <option value={"Bio Chemistry"}>Bio Chemistry</option>
                            <option value={"BME"}>BME</option>
                        </Form.Select>
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

                    <FormGroup>
                        <Form.Label className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic' }}>How well do people understand you at Pratt?(0:least-5:most)</Form.Label>
                        <Form.Select value={this.state.knowing} onChange={this.changeKnowingHandler}>
                            <option>Select Your Choice</option>
                            <option value={"0"}>0</option>
                            <option value={"1"}>1</option>
                            <option value={"2"}>2</option>
                            <option value={"3"}>3</option>
                            <option value={"4"}>4</option>
                            <option value={"5"}>5</option>
                        </Form.Select>
                    </FormGroup>
                    <br />


                    <FormGroup>
                        <Form.Label className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic' }}>How connected to you feel to the staff at Pratt?(0:least-5:most)</Form.Label>
                        <Form.Select value={this.state.connection} onChange={this.changeConnectionHandler}>
                            <option>Select Your Choice</option>
                            <option value={"0"}>0</option>
                            <option value={"1"}>1</option>
                            <option value={"2"}>2</option>
                            <option value={"3"}>3</option>
                            <option value={"4"}>4</option>
                            <option value={"5"}>5</option>
                        </Form.Select>
                    </FormGroup>
                    <br />

                    <FormGroup>
                        <Form.Label className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic' }}>How welcoming have you found Pratt to be?(0:least-5:most)</Form.Label>
                        <Form.Select value={this.state.welcome} onChange={this.changeWelcomeHandler}>
                            <option>Select Your Choice</option>
                            <option value={"0"}>0</option>
                            <option value={"1"}>1</option>
                            <option value={"2"}>2</option>
                            <option value={"3"}>3</option>
                            <option value={"4"}>4</option>
                            <option value={"5"}>5</option>
                        </Form.Select>
                    </FormGroup>
                    <br />


                    <FormGroup>
                        <Form.Label className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic' }}>How much respect do other students at Pratt show towards you?(0:least-5:most)</Form.Label>
                        <Form.Select value={this.state.respectStu} onChange={this.changeRespectStuHandler}>
                            <option>Select Your Choice</option>
                            <option value={"0"}>0</option>
                            <option value={"1"}>1</option>
                            <option value={"2"}>2</option>
                            <option value={"3"}>3</option>
                            <option value={"4"}>4</option>
                            <option value={"5"}>5</option>
                        </Form.Select>
                    </FormGroup>
                    <br />


                    <FormGroup>
                        <Form.Label className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic' }}>How much respect do members of staff at Pratt show toward you?(0:least-5:most)</Form.Label>
                        <Form.Select value={this.state.respectStaff} onChange={this.changeRespectStaffHandler}>
                            <option>Select Your Choice</option>
                            <option value={"0"}>0</option>
                            <option value={"1"}>1</option>
                            <option value={"2"}>2</option>
                            <option value={"3"}>3</option>
                            <option value={"4"}>4</option>
                            <option value={"5"}>5</option>
                        </Form.Select>
                    </FormGroup>
                    <br />

                    <FormGroup>
                        <Form.Label className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic' }}>How much do you matter to others at Pratt?(0:least-5:most)</Form.Label>
                        <Form.Select value={this.state.matter} onChange={this.changeMatterHandler}>
                            <option>Select Your Choice</option>
                            <option value={"0"}>0</option>
                            <option value={"1"}>1</option>
                            <option value={"2"}>2</option>
                            <option value={"3"}>3</option>
                            <option value={"4"}>4</option>
                            <option value={"5"}>5</option>
                        </Form.Select>
                    </FormGroup>
                    <br />

                    <FormGroup>
                        <Form.Label className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic' }}>How happy are you with your choice to be a student at Pratt?(0:least-5:most)</Form.Label>
                        <Form.Select value={this.state.happyChoice} onChange={this.changeHappyChoiceHandler}>
                            <option>Select Your Choice</option>
                            <option value={"0"}>0</option>
                            <option value={"1"}>1</option>
                            <option value={"2"}>2</option>
                            <option value={"3"}>3</option>
                            <option value={"4"}>4</option>
                            <option value={"5"}>5</option>
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

