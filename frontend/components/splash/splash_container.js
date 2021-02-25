import {connect} from 'react-redux';
import Splash from './splash';
import { logout } from '../../actions/session_actions'

const msp = (state, ownProps) => (
    {
        formType: "splash",
        currentUser: state.entities.users[state.session.id]
    }
)

const mdp = dispatch => (
    {
        logout: () => dispatch(logout())
    }
)

export default connect(msp, mdp)(Splash)