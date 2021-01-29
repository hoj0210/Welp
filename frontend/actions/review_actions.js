import * as ReviewApiUtil from '../util/review_api_util';

export const RECEIVE_REVIEW = "RECEIVE_REVIEW";

const receiveReview = (review) => (
    {
        type: RECEIVE_REVIEW,
        review
    }
)

export const fetchReview = (businessId, reviewId) => dispatch => (
    ReviewApiUtil.fetchReview(businessId, reviewId)
        .then(review => dispatch(receiveReview(review)))
)

export const createReview = (review, businessId) => dispatch => {
    return ReviewApiUtil.createReview(review, businessId)
        .then(review => dispatch(receiveReview(review)))
}

export const updateReview = (review, businessId) => dispatch => (
    ReviewApiUtil.updateReview(review, businessId)
        .then(review => dispatch(receiveReview(review)))
)