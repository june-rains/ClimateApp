import React, { Component } from 'react';
import { PieChart, Pie, Tooltip, Cell } from "recharts";
import EventServices from '../services/EventServices';


const COLORS = ["#00C49F", "#0088FE", "#FFBB28"];

// const CustomTooltip = ({ active, payload, label }) => {
//     if (active && payload && payload.length) {
//       return (
//         <div className="custom-tooltip">
//           <p className="label">{`${label} : ${payload[0].value}`}</p>
//           <p className="intro">{getIntroOfPage(label)}</p>
//         </div>
//       );
//     }
//     return null;
//   };


class SimplePieChart extends Component {
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
            <PieChart width={1000} height={400}>
                <Pie
                    dataKey="amount"
                    isAnimationActive={false}
                    data={moods}
                    cx={200}
                    cy={200}
                    outerRadius={110}
                    fill="#8884d8"
                    label
                >
                    {moods.map((entry, index) => (
                        <Cell key={`cell-${index}`} fill={COLORS[index % COLORS.length]} />
                    ))}
                </Pie>
                <Tooltip />
            </PieChart>
        );
    }
}

export default SimplePieChart;