import { Component } from "react";
import SurveyForm from "./SurveyForm";
import NavBar from './NavBar';
import '../index.css';


class OverAllReport extends Component {



    render() {
        return (
            <>
                <NavBar />
                <SurveyForm />
                <br />
            </>

        )
    }
}


export default OverAllReport;