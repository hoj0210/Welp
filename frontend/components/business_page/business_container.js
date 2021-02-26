import { connect } from 'react-redux';
import {fetchBusiness} from '../../actions/business_actions';
import Business from './business'
import {withRouter} from 'react-router-dom'

const msp = (state, ownProps) => (
    {
        business: state.entities.businesses[ownProps.match.params.businessId],
        categoryId: ownProps.match.params.categoryId,
        formType: "otherpages"
    }
)

const mdp = dispatch => {
    //debugger
    return (
        {
            fetchBusiness: (businessId) => dispatch(fetchBusiness(businessId))
        }
    )
}


export default withRouter(connect(msp, mdp)(Business))