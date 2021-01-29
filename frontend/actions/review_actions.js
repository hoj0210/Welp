import * as ReviewApiUtil from '../util/review_api_util';

export const RECEIVE_REVIEW = "RECEIVE_REVIEW";
export const RECEIVE_REVIEWS = "RECEIVE_REVIEWS";

const receiveReview = (review) => (
    {
        type: RECEIVE_REVIEW,
        review
    }
)

const receiveReviews = reviews => (
    {
        type: RECEIVE_REVIEWS,
        reviews
    }
)

export const fetchReviews = (businessId) => dispatch => (
    ReviewApiUtil.fetchReviews(businessId)
        .then(reviews => dispatch(receiveReviews(reviews)))
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