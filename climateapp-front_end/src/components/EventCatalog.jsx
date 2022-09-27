import React, { Component } from 'react'
import NavBar from './NavBar';
import ListEventComponent from './ListEventComponent';

export default class Page1 extends Component {
    render() {
        return (
            <div>
                <NavBar />
                <div style={{ marginLeft: '50px', marginRight: '50px' }}>
                    <ListEventComponent />
                </div>
            </div>
        )
    }
}
