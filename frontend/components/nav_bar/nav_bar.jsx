import React from 'react';
import { Link } from 'react-router-dom';
import { LOGOUT_CURRENT_USER } from '../../actions/session_actions';

const NavBar = props => {
    const notInSession = () => (
        <nav className="login-signup">
            <Link to="/login"><button>Log In</button></Link>
            <Link to="/signup"><button>Sign Up</button></Link>
        </nav>
    );

    const inSession = () => (
        <div>
            <h2>Hi!</h2>
        </div>
    )

    return (
        <div>{props.currentUser ? inSession() : notInSession() }</div>
    )
}

export default NavBar