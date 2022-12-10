import React, { Component } from 'react'
import { Nav, Navbar } from 'react-bootstrap';
import Logo from '../logo.svg'
export default class NavBar extends Component {
    render() {
        return (
            <div>
                <Navbar bg='dark' variant='dark' sticky='top' expand='lg'>
                    <Navbar.Brand>
                        <img src={Logo} alt='logo' width='40px' height='40px' />
                        Duke Event Helper
                    </Navbar.Brand>
                    <Navbar.Toggle />
                    <Navbar.Collapse>
                        <Nav>
                            <Nav.Link href='/'>Home</Nav.Link>
                        </Nav>

                        <Nav>
                            <Nav.Link href='http://vcm-29657.vm.duke.edu:8090/Shibboleth.sso/Logout?return=https://shib.oit.duke.edu/cgi-bin/logout.pl'>Logout</Nav.Link>
                        </Nav>
                    </Navbar.Collapse>
                </Navbar>
            </div>
        )
    }
}
