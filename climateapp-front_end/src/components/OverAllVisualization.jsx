import React, { PureComponent } from 'react';
import NavBar from './NavBar';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import SimpleAreaChart from './SimpleAreaChart';
import SimpleBarChart from './SimpleBarChart';
import SimplePieChart from './SimplePieChart';


class OverAllVisualization extends PureComponent {

    render() {
        return (
            <>
                <NavBar />
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
            </>

        );
    }
}

export default OverAllVisualization;
