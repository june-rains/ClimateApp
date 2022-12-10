import React, { PureComponent } from 'react';
import NavBar from './NavBar';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import SimpleAreaChart from './SimpleAreaChart';
import SimpleBarChart from './SimpleBarChart';
import SimplePieChart from './SimplePieChart';
import SimpleAreaChartZero from './SimpleAreaChartZero';
import SimpleBarChartZero from './SimpleBarChartZero';
import SimplePieChartZero from './SimplePieChartZero';


class OverAllVisualization extends PureComponent {

    render() {
        return (
            <>
                <NavBar />

                <p className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic', backgroundColor: 'powderblue' }}>Students WellBeing Results:</p>
                <Row className="justify-content-md-center">
                    <Col md='auto'>
                        <SimpleAreaChart />
                    </Col>
                    <br />
                    <Col md='auto'>
                        <SimpleBarChart />
                    </Col>

                    <br />
                    <Col md='auto'>
                        <SimplePieChart />
                    </Col>
                </Row>
                {/* <hr style="width:1000PX;"></hr> */}
                <p className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic', backgroundColor: 'powderblue' }}>How connected to you feel to the staff at Pratt's Results: (0: least, 5: most)</p>
                <Row className="justify-content-md-center">
                    <Col md='auto'>
                        <SimpleAreaChartZero at="connection" />
                    </Col>
                    <br />

                    <Col md='auto'>
                        <SimpleBarChartZero at="connection" />
                    </Col>
                    <br />

                    <Col md='auto'>
                        <SimplePieChartZero at="connection" />
                    </Col>
                </Row>
                {/* <hr style="width:1000PX;"></hr> */}
                <p className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic', backgroundColor: 'powderblue' }}>How well do people understand you at Pratt's Results: (0: least, 5: most)</p>
                <Row className="justify-content-md-center">
                    <Col md='auto'>
                        <SimpleAreaChartZero at="knowing" />
                    </Col>
                    <br />

                    <Col md='auto'>
                        <SimpleBarChartZero at="knowing" />
                    </Col>
                    <br />

                    <Col md='auto'>
                        <SimplePieChartZero at="knowing" />
                    </Col>
                </Row>
                {/* <hr style="width:1000PX;"></hr> */}
                <p className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic', backgroundColor: 'powderblue' }}>How welcoming have you found Pratt to be's Results: (0: least, 5: most)</p>
                <Row className="justify-content-md-center">
                    <Col md='auto'>
                        <SimpleAreaChartZero at="welcome" />
                    </Col>
                    <br />

                    <Col md='auto'>
                        <SimpleBarChartZero at="welcome" />
                    </Col>
                    <br />

                    <Col md='auto'>
                        <SimplePieChartZero at="welcome" />
                    </Col>
                </Row>
                {/* <hr style="width:1000PX;"></hr> */}
                <p className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic', backgroundColor: 'powderblue' }}> How much respect do other students at Pratt show towards you's Results: (0: least, 5: most)</p>
                <Row className="justify-content-md-center">
                    <Col md='auto'>
                        <SimpleAreaChartZero at="respectStu" />
                    </Col>
                    <br />

                    <Col md='auto'>
                        <SimpleBarChartZero at="respectStu" />
                    </Col>
                    <br />

                    <Col md='auto'>
                        <SimplePieChartZero at="respectStu" />
                    </Col>
                </Row>
                {/* <hr style="width:1000PX;"></hr> */}
                <p className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic', backgroundColor: 'powderblue' }}> How much respect do members of staff at Pratt show toward you's Results: (0: least, 5: most)</p>
                <Row className="justify-content-md-center">
                    <Col md='auto'>
                        <SimpleAreaChartZero at="respectStaff" />
                    </Col>
                    <br />

                    <Col md='auto'>
                        <SimpleBarChartZero at="respectStaff" />
                    </Col>
                    <br />

                    <Col md='auto'>
                        <SimplePieChartZero at="respectStaff" />
                    </Col>
                </Row>
                {/* <hr style="width:1000PX;"></hr> */}
                <p className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic', backgroundColor: 'powderblue' }}> How much do you matter to others at Pratt's Results: (0: least, 5: most)</p>
                <Row className="justify-content-md-center">
                    <Col md='auto'>
                        <SimpleAreaChartZero at="matter" />
                    </Col>
                    <br />

                    <Col md='auto'>
                        <SimpleBarChartZero at="matter" />
                    </Col>
                    <br />

                    <Col md='auto'>
                        <SimplePieChartZero at="matter" />
                    </Col>
                </Row>
                {/* <hr style="width:1000PX;"></hr> */}
                <p className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic', backgroundColor: 'powderblue' }}>How happy are you with your choice to be a student at Pratt's Results: (0: least, 5: most)</p>
                <Row className="justify-content-md-center">
                    <Col md='auto'>
                        <SimpleAreaChartZero at="happyChoice" />
                    </Col>
                    <br />

                    <Col md='auto'>
                        <SimpleBarChartZero at="happyChoice" />
                    </Col>
                    <br />

                    <Col md='auto'>
                        <SimplePieChartZero at="happyChoice" />
                    </Col>
                </Row>


            </>

        );
    }
}

export default OverAllVisualization;
