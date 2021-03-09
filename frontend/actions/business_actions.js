import * as BusinessApiUtil from '../util/business_api_util';

export const RECEIVE_BUSINESS = "RECEIVE_BUSINESS";
export const RECEIVE_BUSINESSES = "RECEIVE_BUSINESSES";

const receiveBusiness = (business) => (
    {
        type: RECEIVE_BUSINESS,
        business
    }
)

const receiveBusinesses = (businesses) => (
    {
        type: RECEIVE_BUSINESSES,
        businesses 
    }
)
export const fetchBusiness = (businessId) => dispatch => {
    
    return(
        BusinessApiUtil.fetchBusiness(businessId)
            .then((business) => {
                
                return (
                    dispatch(receiveBusiness(business))
                )
            })
    )
}


export const fetchBusinesses = () => dispatch => {
    return(
        BusinessApiUtil.fetchBusinesses()
            .then((businesses) => {
        
                return (
                    dispatch(receiveBusinesses(businesses))
                )
            })
    )
}

export const searchBusinesses = (search) => dispatch => {
    return(
        BusinessApiUtil.searchBusinesses(search)
            .then(businesses => {
                return(
                    dispatch(receiveBusinesses(businesses))
                )
            })
    )
}
