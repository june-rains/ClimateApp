import React, { Component } from 'react';
import { PieChart, Pie, Tooltip, Cell } from "recharts";
import EventServices from '../services/EventServices';


const COLORS = ["#00C49F", "#0088FE", "#FFBB28", "#318CE7", "#dc143c"];

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
        let info = [
            {
                id: '0',
                amount: 0,
            },

            {
                id: '1',
                amount: 0,
            },

            {
                id: '2',
                amount: 0,
            },

            {
                id: '3',
                amount: 0,
            },

            {
                id: '4',
                amount: 0,
            },

            {
                id: '5',
                amount: 0,
            }

        ]

        this.state.reports.map(report => {
            if (this.props.at === 'connection') {
                if (report.connection === '0') {
                    info[0].amount = info[0].amount + 1;
                }

                if (report.connection === '1') {
                    info[1].amount = info[1].amount + 1;
                }

                if (report.connection === '2') {
                    info[2].amount = info[2].amount + 1;
                }

                if (report.connection === '3') {
                    info[3].amount = info[3].amount + 1;
                }

                if (report.connection === '4') {
                    info[4].amount = info[4].amount + 1;
                }

                if (report.connection === '5') {
                    info[5].amount = info[5].amount + 1;
                }

            } else if (this.props.at === 'knowing') {
                if (report.knowing === '0') {
                    info[0].amount = info[0].amount + 1;
                }

                if (report.knowing === '1') {
                    info[1].amount = info[1].amount + 1;
                }

                if (report.knowing === '2') {
                    info[2].amount = info[2].amount + 1;
                }

                if (report.knowing === '3') {
                    info[3].amount = info[3].amount + 1;
                }

                if (report.knowing === '4') {
                    info[4].amount = info[4].amount + 1;
                }

                if (report.knowing === '5') {
                    info[5].amount = info[5].amount + 1;
                }
            } else if (this.props.at === 'welcome') {
                if (report.welcome === '0') {
                    info[0].amount = info[0].amount + 1;
                }

                if (report.welcome === '1') {
                    info[1].amount = info[1].amount + 1;
                }

                if (report.welcome === '2') {
                    info[2].amount = info[2].amount + 1;
                }

                if (report.welcome === '3') {
                    info[3].amount = info[3].amount + 1;
                }

                if (report.welcome === '4') {
                    info[4].amount = info[4].amount + 1;
                }

                if (report.welcome === '5') {
                    info[5].amount = info[5].amount + 1;
                }
            } else if (this.props.at === 'respectStu') {
                if (report.respectStu === '0') {
                    info[0].amount = info[0].amount + 1;
                }

                if (report.respectStu === '1') {
                    info[1].amount = info[1].amount + 1;
                }

                if (report.respectStu === '2') {
                    info[2].amount = info[2].amount + 1;
                }

                if (report.respectStu === '3') {
                    info[3].amount = info[3].amount + 1;
                }

                if (report.respectStu === '4') {
                    info[4].amount = info[4].amount + 1;
                }

                if (report.respectStu === '5') {
                    info[5].amount = info[5].amount + 1;
                }
            } else if (this.props.at === 'respectStaff') {
                if (report.respectStaff === '0') {
                    info[0].amount = info[0].amount + 1;
                }

                if (report.respectStaff === '1') {
                    info[1].amount = info[1].amount + 1;
                }

                if (report.respectStaff === '2') {
                    info[2].amount = info[2].amount + 1;
                }

                if (report.respectStaff === '3') {
                    info[3].amount = info[3].amount + 1;
                }

                if (report.respectStaff === '4') {
                    info[4].amount = info[4].amount + 1;
                }

                if (report.respectStaff === '5') {
                    info[5].amount = info[5].amount + 1;
                }
            } else if (this.props.at === 'matter') {
                if (report.matter === '0') {
                    info[0].amount = info[0].amount + 1;
                }

                if (report.matter === '1') {
                    info[1].amount = info[1].amount + 1;
                }

                if (report.matter === '2') {
                    info[2].amount = info[2].amount + 1;
                }

                if (report.matter === '3') {
                    info[3].amount = info[3].amount + 1;
                }

                if (report.matter === '4') {
                    info[4].amount = info[4].amount + 1;
                }

                if (report.matter === '5') {
                    info[5].amount = info[5].amount + 1;
                }
            } else if (this.props.at === 'happyChoice') {
                if (report.happyChoice === '0') {
                    info[0].amount = info[0].amount + 1;
                }

                if (report.happyChoice === '1') {
                    info[1].amount = info[1].amount + 1;
                }

                if (report.happyChoice === '2') {
                    info[2].amount = info[2].amount + 1;
                }

                if (report.happyChoice === '3') {
                    info[3].amount = info[3].amount + 1;
                }

                if (report.happyChoice === '4') {
                    info[4].amount = info[4].amount + 1;
                }

                if (report.happyChoice === '5') {
                    info[5].amount = info[5].amount + 1;
                }
            }
            return null
        })

        return (
            <PieChart width={200} height={200}>
                <Pie
                    dataKey="amount"
                    isAnimationActive={false}
                    data={info}
                    cx={100}
                    cy={100}
                    outerRadius={60}
                    fill="#8884d8"
                    label
                >
                    {info.map((entry, index) => (
                        <Cell key={`cell-${index}`} fill={COLORS[index % COLORS.length]} />
                    ))}
                </Pie>
                <Tooltip />
            </PieChart>
        );
    }
}

export default SimplePieChart;