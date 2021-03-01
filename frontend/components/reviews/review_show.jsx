import React from 'react';

class ReviewShow extends React.Component {
    constructor(props) {
        super(props);
        this.ratingStar = "";
        if (this.props.review.rating === 1) {
            this.ratingStar = window.oneStar;
        } else if (this.props.review.rating === 2) {
            this.ratingStar = window.twoStar;
        } else if (this.props.review.rating === 3) {
            this.ratingStar = window.threeStar;
        } else if (this.props.review.rating === 4) {
            this.ratingStar = window.fourStar;
        } else {
            this.ratingStar = window.fiveStar;
        }
        this.date = new Date(this.props.review.created_at);
        this.realDate = (this.date.getMonth() + 1) + "/" + this.date.getDate() + "/" + this.date.getFullYear();
        this.handleDelete = this.handleDelete.bind(this);
    }

    handleDelete() {
        this.props.deleteReview(this.props.review, this.props.business.id)
    }

    handleClick(id){
        //debugger
        if (document.getElementById(`myReviewDropdown${id}`).style.display === "block") {
            document.getElementById(`myReviewDropdown${id}`).style.display = "none";
        } else {
            document.getElementById(`myReviewDropdown${id}`).style.display = "block";
        }
    }
    deleteModal(id){
        const deleteContainer = document.getElementById(`delete${id}`);
        return(
            deleteContainer.style.display = "block"
        )
    }

    removeModal(e) {
        return(
            e.currentTarget.style.display = "none"
        )
    }
    editandDelete(){
        if (this.props.currentUser !== null && this.props.currentUser !== undefined) {
            debugger
            if (this.props.review.user_id === this.props.currentUser.id) {
                return (
                    <div className="edit-delete-btn">
                         <div className={`dropdown-review`}>
                            <div className="reviewDrpbtwn">
                                <button onClick={() => this.handleClick(this.props.review.id)}className="review-options">
                                    <i class="fas fa-ellipsis-h"></i>
                                </button>
                            </div>
                            <div id={`myReviewDropdown${this.props.review.id}`} className='review-dropdown-content'>
                                <p className="edit-review">Edit review</p>
                                <p className="delete-review"onClick={() => this.deleteModal(this.props.review.id)}>Remove review</p>
                            </div>
                        </div>
                        {/* <p value="delete" onClick={this.handleDelete}>Delete</p>      */}
                        <div id={`delete${this.props.review.id}`} className="delete-background" onClick={this.removeModal}>
                            <div className="delete-container-top"onClick={e => e.stopPropagation()} >
                                <div className="delete-text">
                                    <p className="delete-review-header"><strong>Remove Review</strong></p>
                                    <br/>
                                    <p className="delete-text-q">Reasons for removing this review?</p>
                                    <br/>
                                    <ul className="delete-reasons">
                                        <li>I was threatened with leagal action or sued.</li>
                                        <br/>
                                        <li>I changed my opinion of this business after a new interaction.</li>
                                        <br/>
                                        <li>I was offered a refund or other compensation to remove this.</li>
                                        <br/>
                                        <li>I signed a contract with the business that requires me to remove this review.</li>
                                        <br/>
                                        <li>Other</li>
                                        <br/>
                                    </ul>
                                    <div className="delete-options">
                                        <p>Are you sure you want to remove your review?</p>
                                        <br/>
                                        <div className="buttons-box">
                                            <button className="del-no"onClick={() => window.location.reload()}>Keep Review</button>
                                            <button className="del-yes"onClick={this.handleDelete}>Remove Review</button>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>


                    </div>
                )
            } else {
                return (
                    <div className="invisible">
                        Hey
                    </div>
                )
            }
        }
    }


    render(){
        return(
            <div className="review-container">
                <div className="review-box">
                    <div className="review-top">
                        <div className="important-info-container">
                            <div className="profile-box">
                                <img src="" alt=""/>
                                <div className="user-info">
                                    {/* <li>{props.review.user.fname} {props.review.user.lname.slice(0,1)}</li>
                                    <li>{props.review.user.zip_code}</li> */}
                                </div>
                            </div>
                            <div className="rating-date-box">
                                <span className="review-rating">
                                    <img src={this.ratingStar} alt=""/>
                                </span>
                                <span className="review-created-time">{this.realDate}</span>
                            </div>
                        </div>
                        {this.editandDelete()}
                    </div>
                    <div className="review-main">
                        <div className="review-main-box">
                            {this.props.review.message}
                        </div>
                        {/* <div className="review-rxn-buttons">
                            <li className="reaction-button"><img src={window.useful} alt=""/> 
                                <span className="reaction-text">Useful</span></li>
                            <li className="reaction-button"><img src={window.funny} alt="" /> 
                                <span className="reaction-text">Funny</span></li>
                            <li className="reaction-button"><img src={window.cool} alt="" /> 
                                <span className="reaction-text">Cool</span></li>
                        </div> */}
                    </div>
                </div>
                
            </div>
        )
    }
}
// const ReviewShow = props => {
//     let ratingStar = "";
//     if (props.review.rating === 1) {
//         ratingStar = window.oneStar;
//     } else if (props.review.rating === 2) {
//         ratingStar = window.twoStar; 
//     } else if (props.review.rating === 3) {
//         ratingStar = window.threeStar;
//     } else if (props.review.rating === 4) {
//         ratingStar = window.fourStar;
//     } else {
//         ratingStar = window.fiveStar;
//     }

//     let date = new Date(props.review.created_at);
//     const realDate = (date.getMonth() + 1) + "/" + date.getDate() + "/" + date.getFullYear();
//     return (
//         <div>
//             <div>
//                 <div className="profile-box">
//                     <img src="" alt=""/>
//                     <div className="user-info">
//                         {/* <li>{props.review.user.fname} {props.review.user.lname.slice(0,1)}</li>
//                         <li>{props.review.user.zip_code}</li> */}
//                     </div>
//                 </div>
//                 <div className="rating-date-box">
//                     <span className="review-rating">
//                         <img src={ratingStar} alt=""/>
//                     </span>
//                     <span className="review-created-time">{realDate}</span>
//                 </div>
//                 <div className="review-main-box">
//                     {props.review.message}
//                 </div>
//                 <div className="review-rxn-buttons">
//                     <li className="reaction-button"><img src={window.useful} alt=""/> 
//                         <span className="reaction-text">Useful</span></li>
//                     <li className="reaction-button"><img src={window.funny} alt="" /> 
//                         <span className="reaction-text">Funny</span></li>
//                     <li className="reaction-button"><img src={window.cool} alt="" /> 
//                         <span className="reaction-text">Cool</span></li>
//                 </div>
//             </div>
//         </div>
//     )
// }

export default ReviewShow