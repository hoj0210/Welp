import { connect } from 'react-redux';
import React from 'react';
import { signup, receiveErrors } from '../../actions/session_actions';
import SignupForm from './signup_form';

const msp = (state, ownProps) => (
    {
        errors: state.errors.session,
    }
)

const mdp = dispatch => (
    {
        processForm: (user) => dispatch(signup(user)),
        receiveErrors: (errors) => dispatch(receiveErrors(errors))
    }
)

export default connect(msp, mdp)(SignupForm)