import React, { Component } from 'react'
import { Link } from "react-router-dom";
import NavBar from './NavBar';
import Button from 'react-bootstrap/Button';
import { Container } from 'react-bootstrap';
import EventServices from "../services/EventServices";
import { Nav, Navbar } from 'react-bootstrap';

class Continue extends Component {
    constructor(props) {
        super(props)

        this.state = {
            userInfo: [],
            attributesList: []
        }
    }

    componentDidMount() {
        EventServices.getUserInfo().then((res) => {
            this.setState({ userInfo: res.data });
            this.setState({ attributesList: res.data.attributes });
        })
    }





    render() {

        let info = []
        this.state.attributesList.map(list => {
            console.log(list.name);
            console.log(list.values[0]);
            info.push(list.values[0]);
        })

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
                    <Nav>
                        <Nav.Link href={`/netID?=${info[2]}&&name?=${info[1]}&&role?=${info[0]}&&&`}>Home</Nav.Link>
                    </Nav>
                </Container>
            </div >
        );

    }
}

export default Continue;

