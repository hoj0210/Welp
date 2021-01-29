import React from 'react';
import { connect } from 'react-redux';
import NavBar from './nav_bar';
import { logout } from '../../actions/session_actions';

const msp = (state, ownProps) => (
    {
        formType: "review_pages",
        currentUser: state.entities.users[state.session.id],
        //businessId: ownProps.match.params.businessId
    }
)

const mdp = dispatch => (
    {
        logout: () => dispatch(logout())
    }
)

export default connect(msp, mdp)(NavBar)