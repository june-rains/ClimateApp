import React, { Component } from 'react';
class TimeStamp extends Component {
    render() {
        const options = { year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit' };
        return (
            <>
                {this.props.def}
                {new Date(this.props.time).toLocaleDateString('es-ES', options)}
            </>
        );
    }
}

export default TimeStamp;