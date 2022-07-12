import React, { Component } from 'react';
import EventServices from '../services/EventServices';

class ListEventComponent extends Component {
    constructor(props) {
        super(props)

        this.state = {
            events: []
        }
    }

    componentDidMount(){
        EventServices.getEvents().then((res) => {
            this.setState({ events: res.data });
        })
    }


    render() {
        return (
            <div>
                <h2 className='text-center'>Employees List</h2>
                <div className='row'>
                    <table className='table table-striped table-bordered'>
                        <thead>
                            <tr>
                                <th>Employee First Name</th>
                                <th>Employee Last Name</th>
                                <th>Employee Email</th>
                                <th>Actions </th>
                            </tr>
                        </thead>

                        <tbody>
                            {
                                this.state.events.map(
                                    event =>
                                        <tr key={event.id}>
                                            <td>{event.summary}</td>
                                            <td>{event.status}</td>
                                            {/* <td>{employee.lastName}</td>
                                            <td>{employee.emailId}</td> */}
                                        </tr>
                                )
                            }


                        </tbody>

                    </table>
                </div>
            </div>
        );
    }
}

export default ListEventComponent;