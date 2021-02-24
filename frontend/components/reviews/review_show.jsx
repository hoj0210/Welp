import React from 'react';

const ReviewShow = props => {
    let ratingStar = "";
    if (props.review.rating === 1) {
        ratingStar = window.oneStar;
    } else if (props.review.rating === 2) {
        ratingStar = window.twoStar; 
    } else if (props.review.rating === 3) {
        ratingStar = window.threeStar;
    } else if (props.review.rating === 4) {
        ratingStar = window.fourStar;
    } else {
        ratingStar = window.fiveStar;
    }

    let date = new Date(props.review.created_at);
    const realDate = (date.getMonth() + 1) + "/" + date.getDate() + "/" + date.getFullYear();
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
                    <span className="review-rating">
                        <img src={ratingStar} alt=""/>
                    </span>
                    <span className="review-created-time">{realDate}</span>
                </div>
                <div className="review-main-box">
                    {props.review.message}
                </div>
                <div className="review-rxn-buttons">
                    <li className="reaction-button"><img src={window.useful} alt=""/> 
                        <span className="reaction-text">Useful</span></li>
                    <li className="reaction-button"><img src={window.funny} alt="" /> 
                        <span className="reaction-text">Funny</span></li>
                    <li className="reaction-button"><img src={window.cool} alt="" /> 
                        <span className="reaction-text">Cool</span></li>
                </div>
            </div>
        </div>
    )
}

export default ReviewShow