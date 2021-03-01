import { connect } from 'react-redux';
import UpdateReviewForm from './review_form'
import { createReview } from '../../actions/review_actions'
import { fetchBusiness } from '../../actions/business_actions'
import { logout } from '../../actions/session_actions';

const msp = (state, ownProps) => {
    //debugger
    return {
        business: state.entities.businesses[ownProps.match.params.businessId],
        user_id: state.session.id,
        formType: "review_pages",
        currentUser: state.entities.users[state.session.id]
    }
}

const mdp = dispatch =>(
    {
        fetchBusiness: (businessId) => dispatch(fetchBusiness(businessId)),
        createReview: (review, businessId) => dispatch(createReview(review, businessId)),
        logout: () => dispatch(logout())
    }
)

export default connect(msp, mdp)(UpdateReviewForm)