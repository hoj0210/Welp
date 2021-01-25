import * as BusinessApiUtil from '../util/business_api_util';

export const RECEIVE_BUSINESS = "RECEIVE_BUSINESS";

const receiveBusiness = (business) => (
    {
        type: RECEIVE_BUSINESS,
        business
    }
)

export const fetchBusiness = (businessId) => dispatch => {
    #debugger
    return(
        BusinessApiUtil.fetchBusiness(businessId)
            .then((business) => {
                #debugger
                return (
                    dispatch(receiveBusiness(business))
                )
            })
    )
}