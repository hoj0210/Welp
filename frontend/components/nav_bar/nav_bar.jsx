import React from 'react';
import { Link } from 'react-router-dom';
import { LOGOUT_CURRENT_USER } from '../../actions/session_actions';

const NavBar = props => {
    const notInSession = () => (
        <nav className="login-signup">
            <Link to="/login"><button className="session-button1">Log In</button></Link>
            <Link to="/signup"><button className="session-button2">Sign Up</button></Link>
        </nav>
    );

    const inSession = () => (
        <div>
            <button className="header-button" onClick={() => props.logout()}>Log Out</button>
        </div>
    )

    return (
        props.currentUser ? inSession() : notInSession() 
    )
}

export default NavBar