import { Component, useState } from "react";
import SurveyForm from "./SurveyForm";
import NavBar from './NavBar';
import '../index.css';
import EventServices from "../services/EventServices";


class OverAllReport extends Component {
    constructor(props) {
        super(props)

        this.state = {
            userInfo: [],
            attributesList: []
        }
    }

    componentDidMount() {
        EventServices.getUserInfo().then((res) => {
            this.setState({ userInfo: res.data });
            this.setState({ attributesList: res.data.attributes });
        })
    }


    render() {
        let info = []
        this.state.attributesList.map(list => {
            console.log(list.name);
            console.log(list.values[0]);
            info.push(list.values[0]);
        })
        return (
            <>
                <NavBar />
                Welcome, {info[1]}!
                <SurveyForm NetID = {info[2]} Name = {info[1]}/>
                {console.log(JSON.stringify(this.state.userInfo))}
                <br />
            </>

        )
    }
}


export default OverAllReport;