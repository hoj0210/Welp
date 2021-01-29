export const fetchReview = (businessId, reviewId) => (
    $.ajax({
        method: "GET",
        url: `/api/businesses/${businessId}/reviews/${reviewId}`
    })
)

export const createReview = (review, businessId) => (
    $.ajax({
        method: "POST",
        url: `/api/businesses/${businessId}/reviews`,
        review
    })
)

export const updateReview = (review, businessId) => (
    $.ajax({
        method: "PATCH",
        url: `/api/businesses/${businessId}/reviews/${review.id}`,
        review 
    })
)