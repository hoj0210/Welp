import React from 'react';

const ReviewShow = props => {
    debugger
    return (
        <div>
            <div>
                <div className="profile-box">
                    <img src="" alt=""/>
                    <div className="user-info">
                        {/* <li>{props.review.user.fname} {props.review.user.lname.slice(0,1)}</li>
                        <li>{props.review.user.zip_code}</li> */}
                    </div>
                </div>
                <div className="rating-date-box">
                    <span className="review-rating">Rating: {props.review.rating}</span>
                    <span className="review-created-time">{props.review.created_at}</span>
                </div>
                <div className="review-main-box">
                    {props.review.message}
                </div>
                <div className="review-rxn-buttons">
                    <li>Useful</li>
                    <li>Funny</li>
                    <li>Cool</li>
                </div>
            </div>
        </div>
    )
}

export default ReviewShow