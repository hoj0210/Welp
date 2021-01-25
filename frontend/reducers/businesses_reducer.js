import {
    RECEIVE_BUSINESS
} from '../actions/business_actions';

const BusinessesReducer = (state = {}, action) => {
    Object.freeze(state);
    debugger
    switch(action.type){
        case RECEIVE_BUSINESS:
            return Object.assign({}, state, {[action.business.id]: action.business})
        default: 
            return state 
    }
}
export default BusinessesReducer;