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
    }

    handleClick(){
        //debugger
        document.getElementById("myReviewDropdown").classList.toggle("show");
    }

    editandDelete(){
        if (this.props.currentUser !== null && this.props.currentUser !== undefined) {
            debugger
            if (this.props.review.user_id === this.props.currentUser.id) {
                return (
                    <div className="edit-delete-btn">
                         <div className={`dropdown-${this.type}`}>
                            <div className="reviewDrpbtwn">
                                <button onClick={() => this.handleClick()}className="review-options">
                                    <i class="fas fa-ellipsis-h"></i>
                                </button>
                            </div>
                            <div id="myReviewDropdown" className='review-dropdown-content'>
                                <div className="dropdown-profile">
                                    <img className="profile-inner" src={window.defaultProfile} />
                                    <div className="dropdown-profile-text">
                                        <div className="dropdown-profile-name">{`${this.props.currentUser.fname} ${this.props.currentUser.lname.slice(0, 1)}.`}</div>
                                        <div className="dropdown-profile-addy">{`${this.props.currentUser.zip_code}`}</div>
                                    </div>
                                </div>
                                <button className={`logout-button${this.type}`} onClick={() => this.props.logout()}>Log Out</button>
                            </div>
                        </div>
                        <p className="update-btn" onClick={() => this.updateModal(this.props.review._id)}>Update</p>
                        <p className="delete-btn" onClick={() => this.deleteModal(this.props.review._id)}>Delete</p>
                        {/* <p value="delete" onClick={this.handleDelete}>Delete</p>      */}
                        <div id={`delete${this.props.review._id}`} className="delete-background" onClick={this.removeModal}>
                            <div className="delete-container-top"onClick={e => e.stopPropagation()} >
                                <div className="delete-text">
                                    <p className="delete-text-q">Are you sure you want to delete the review?</p>
                                    <div className="buttons-box">
                                        <button className="del-yes"onClick={this.handleDelete}>Yes</button>
                                        <button className="del-no"onClick={() => window.location.reload()}>No</button>
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
            <div>
                <div className="review-top">
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
                <div className="review-main">
                    {this.editandDelete()}
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