import {
    RECEIVE_REVIEW
} from '../actions/review_actions';

const ReviewsReducer = (state = {}, action) => {
    Object.freeze(state);
    switch(action.type){
        case RECEIVE_REVIEW:
            return Object.assign({}, state, {[action.review.id]: action.review})
        default:
            return state
    }
}

export default ReviewsReducer