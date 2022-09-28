import React, { Component } from 'react';
class TimeStampWeekDay extends Component {
    render() {
        const options = {
            weekday: 'long',
            year: 'numeric',
            month: 'long',
            day: 'numeric',
        };
        return (
            <span className="font-link" style={{ fontWeight: 'bold', textDecorationLine: 'underline' }}>
                {new Date(this.props.time).toLocaleDateString('en-US', options)}
            </span>

        );
    }
}

export default TimeStampWeekDay;