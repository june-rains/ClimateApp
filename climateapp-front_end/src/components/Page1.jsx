import React, { Component } from 'react'
import NavBar from './NavBar';
import ListEventComponent from './ListEventComponent';

export default class Page1 extends Component {
    render() {
        return (
            <div>
                <NavBar />
                <ListEventComponent />
            </div>
        )
    }
}
