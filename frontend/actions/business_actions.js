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
    //debugger
    return(
        BusinessApiUtil.fetchBusiness(businessId)
            .then((business) => {
                //debugger
                return (
                    dispatch(receiveBusiness(business))
                )
            })
    )
}

export const fetchBusinesses = () => dispatch => (
    BusinessApiUtil.fetchBusinesses()
        .then(businesses => (
            dispatch(receiveBusinesses(businesses))
        ))
)