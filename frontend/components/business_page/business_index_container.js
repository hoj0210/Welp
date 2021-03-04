import { connect } from 'react-redux';
// import {fetchBusinesses} from '../../actions/business_actions';
import BusinessIndex from './business_index'
import {withRouter} from 'react-router-dom'
import { logout } from '../../actions/session_actions';
import { searchBusinesses } from '../../actions/business_actions';

const msp = (state, ownProps) => (
    {
        businesses: state.entities.businesses,
        formType: "other_pages",
        currentUser: state.entities.users[state.session.id]
    }
)

const mdp = dispatch =>(
    {
        searchBusinesses: (search) => dispatch(searchBusinesses(search)),
        logout: () => dispatch(logout())
    }
) 

export default withRouter(connect(msp, mdp)(BusinessIndex))