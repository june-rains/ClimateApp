import React, { Component } from 'react'
import { Link } from "react-router-dom";
import NavBar from './NavBar';
import Button from 'react-bootstrap/Button';
import { Container } from 'react-bootstrap';



export default class Home extends Component {
    render() {
        return (
            <div>
                <style type="text/css">
                    {`    .btn-flat {
      background-color: #33be71;
      color: white;
    }

    .btn-xxl {
      margin: 1rem;
      padding: 10px 20px;;
      font-size: 1.5rem;
      width: 100%;
    }
    `}
                </style>


                <NavBar />

                <Container>
                    <Link to="/eventsCatalog">
                        <Button variant="flat" size="xxl">
                            Events Catalog
                        </Button>
                    </Link>

                    <Link to="/overAllReport">
                        <Button variant="flat" size="xxl">
                            Overall Well-Being Report
                        </Button>
                    </Link>
                    
                    <Link to="/dataVisualization">
                        <Button variant="flat" size="xxl">
                            Data Visualization
                        </Button>
                    </Link>
                    

                </Container>
            </div >
        )
    }
}
