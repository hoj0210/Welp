import { connect } from 'react-redux';
import ReviewForm from './review_form'
import { createReview } from '../../actions/review_actions'
import { fetchBusiness } from '../../actions/business_actions'
const msp = (state, ownProps) => {
    //debugger
    return {
        review: {
            message: "",
            rating: ""
        },
        business: state.entities.businesses[ownProps.match.params.businessId],
        currentUser: state.entities.users[state.session.id],
        formType: "Create Review"
    }
}
    

const mdp = dispatch =>(
    {
        fetchBusiness: (businessId) => dispatch(fetchBusiness(businessId)),
        createReview: (review, businessId) => dispatch(createReview(review, businessId))
    }
)

export default connect(msp, mdp)(ReviewForm)