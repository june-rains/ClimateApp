import Breadcrumb from 'react-bootstrap/Breadcrumb';
import React, { Component } from 'react';
import '../index.css';


class EventBreadcrumb extends Component {
    render() {
        return (
            <Breadcrumb>
                <Breadcrumb.Item href='http://localhost:3000' className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic' }}>Home</Breadcrumb.Item>
                <Breadcrumb.Item href='http://localhost:3000/eventsCatalog' className="font-link" style={{ fontWeight: 'bold', fontStyle: 'italic' }}>
                    Event Catalog
                </Breadcrumb.Item>
                <Breadcrumb.Item active>{this.props.eventTitle}</Breadcrumb.Item>
            </Breadcrumb>
        );
    }
}

export default EventBreadcrumb;