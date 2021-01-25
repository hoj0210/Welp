import { connect } from 'react-redux';
import SearchBox from './search_box';


const msp = (state, ownProps) => (
    {
        formType: "otherpages"
    }
)

const mdp = dispatch => (
    {

    }
)

export default connect(msp, mdp)(SearchBox)