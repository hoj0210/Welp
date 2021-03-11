import { combineReducers } from 'redux';
import sessionErrorsReducer from './session_errors_reducer';
import reviewErrorsReducer from './review_errors_reducer';

const ErrorsReducer = combineReducers({
    review: reviewErrorsReducer,
    session: sessionErrorsReducer,
})

export default ErrorsReducer