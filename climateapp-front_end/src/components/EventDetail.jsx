import React, { Component } from 'react';
// import EventServices from '../services/EventServices';



class EventDetail extends Component {
    constructor(props) {
        super(props)
        this.state = {
            events: {},
        }
    }


    // componentDidMount() {
    //     const id = this.props.match.params.id;
    //     EventServices.getEventDetail(id).then((res) => {
    //         this.setState({ events: res.data });
    //     })
    // }

    render() {
        return (
            <div>
                {this.props.match.params.id};
            </div>
        );
    }
}

export default EventDetail;