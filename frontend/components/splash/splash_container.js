import React from 'react';
import { connect } from 'react-redux';
import Splash from './splash';
import { logout, receiveCurrentUser } from '../../actions/session_actions';
import {searchBusinesses} from '../../actions/business_actions';

const msp = (state, ownProps) => {
    return(
        {
            formType: "splash",
            currentUser: state.entities.users[state.session.id]
        }
    )
}
// (
    
//     {
//         formType: "splash",
//         currentUser: state.entities.users[state.session.id]
//     }
// )

const mdp = dispatch => (
    {
        logout: () => dispatch(logout()),
        receiveCurrentUser: (currentUser) => dispatch(receiveCurrentUser(currentUser)),
        searchBusinesses: (search) => dispatch(searchBusinesses(search))
    }
)

export default connect(msp, mdp)(Splash)