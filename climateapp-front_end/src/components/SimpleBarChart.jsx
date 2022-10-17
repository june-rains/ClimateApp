import React, { Component } from 'react';
import {
    BarChart,
    Bar,
    XAxis,
    YAxis,
    CartesianGrid,
    Tooltip,
    Legend
} from "recharts";
import EventServices from '../services/EventServices';



class SimpleBarChart extends Component {
    constructor(props) {
        super(props)

        this.state = {
            reports: [],
        }
    }

    componentDidMount() {
        EventServices.getOverallReports().then((res) => {
            this.setState({ reports: res.data });
            console.log('reports => ' + JSON.stringify(this.state.reports))
        })
    }


    render() {
        // now we have reports from firebase, and we need to extract well-being data
        let moods = [
            {
                id: 'Good',
                amount: 0,
            },

            {
                id: 'Normal',
                amount: 0,
            },

            {
                id: 'Bad',
                amount: 0,
            }

        ]

        this.state.reports.map(report => {
            if (report.wellBeing === 'Good') {
                moods[0].amount = moods[0].amount + 1;
            }

            if (report.wellBeing === 'Normal') {
                moods[1].amount = moods[1].amount + 1;
            }

            if (report.wellBeing === 'Bad') {
                moods[2].amount = moods[2].amount + 1;
            }
            return null
        })

        return (
            <BarChart
                width={500}
                height={430}
                data={moods}
                margin={{
                    top: 5,
                    right: 30,
                    left: 20,
                    bottom: 5
                }}
            >
                <CartesianGrid strokeDasharray="3 3" />
                <XAxis dataKey="id" />
                <YAxis />
                <Tooltip />
                <Legend />
                <Bar dataKey="amount" fill="#8884d8" />
            </BarChart>

        );
    }
}

export default SimpleBarChart;