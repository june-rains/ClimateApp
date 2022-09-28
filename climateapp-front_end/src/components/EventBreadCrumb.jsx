import Breadcrumb from 'react-bootstrap/Breadcrumb';
import React, { Component } from 'react';


class EventBreadcrumb extends Component {
    render() {
        return (
            <Breadcrumb>
                <Breadcrumb.Item href='http://localhost:3000'>Home</Breadcrumb.Item>
                <Breadcrumb.Item href='http://localhost:3000/eventsCatalog'>
                    Event Catalog
                </Breadcrumb.Item>
                <Breadcrumb.Item active>{this.props.eventTitle}</Breadcrumb.Item>
            </Breadcrumb>
        );
    }
}

export default EventBreadcrumb;