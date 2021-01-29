import { connect } from 'react-redux';
import ReviewIndex from './review_index';
import {fetchReviews } from '../../actions/review_actions'

const msp = (state, ownProps) => {
    return(
        {
            reviews: state.entities.reviews,
            // business_id: ownProps.match.params.businessId
        }
    )
    
}

const mdp = dispatch => (
    {
        fetchReviews: (businessId) => dispatch(fetchReviews(businessId))
    }
)

export default connect(msp, mdp)(ReviewIndex)