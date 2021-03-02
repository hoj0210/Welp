import { connect } from 'react-redux';
import {fetchBusinesses} from '../../actions/business_actions';
import BusinessIndex from './business_index'
import {withRouter} from 'react-router-dom'
import { logout } from '../../actions/session_actions';

const msp = (state, ownProps) => (
    {
        businesses: state.entities.businesses,
        formType: "other_pages",
        currentUser: state.entities.users[state.session.id]
    }
)

const mdp = dispatch => {
    return(
        {
            fetchBusinesses: () => dispatch(fetchBusinesses()),
            logout: () => dispatch(logout())
        }
    )
}

export default connect(msp, mdp)(BusinessIndex)