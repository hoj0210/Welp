import { connect } from 'react-redux';
import {fetchBusiness, searchBusinesses} from '../../actions/business_actions';
import Business from './business'
import {withRouter} from 'react-router-dom'
import { logout } from '../../actions/session_actions';

const msp = (state, ownProps) => {
    debugger
    return(
        {
            business: state.entities.businesses[ownProps.match.params.businessId],
            categoryId: ownProps.match.params.categoryId,
            formType: "other_pages",
            currentUser: state.entities.users[state.session.id]
        }
    )
}
// (
//     {
//         business: state.entities.businesses[ownProps.match.params.businessId],
//         categoryId: ownProps.match.params.categoryId,
//         formType: "other_pages",
//         currentUser: state.entities.users[state.session.id]
//     }
// )

const mdp = dispatch => {
    //debugger
    return (
        {
            fetchBusiness: (businessId) => dispatch(fetchBusiness(businessId)),
            logout: () => dispatch(logout()),
            searchBusinesses: (search) => dispatch(searchBusinesses(search))
        }
    )
}


export default withRouter(connect(msp, mdp)(Business))