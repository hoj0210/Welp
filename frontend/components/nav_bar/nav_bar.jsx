import React from 'react';
import { Link } from 'react-router-dom';
import { LOGOUT_CURRENT_USER } from '../../actions/session_actions';
//import SearchBoxContainer 

const NavBar = props => {
    // debugger
    const type = (props.formType === "splash") ? "splash" : "other_pages";
    // const link = (props.formType === "splash") ? "/login" : `/business/${props.businessId}`;

    const notInSession = () => (
        <nav className={`login-signup${type}`}>
            <Link to="/login"><button className={`session-button1${type}`}>Log In</button></Link>
            <Link to="/signup"><button className={`session-button2${type}`}>Sign Up</button></Link>
        </nav>
    );

    const inSession = () => (
        <div className="nav-loggedin">
            <button className="logout-button" onClick={() => props.logout()}>Log Out</button>
        </div>
    )

    return (
        <div>
            {props.currentUser ? inSession() : notInSession()}
            {/* <SearchBoxContainer/> */}
        </div>

    )
}

export default NavBar