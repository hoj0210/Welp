import React from 'react';
import ReviewShow from './review_show'

class ReviewIndex extends React.Component {
    constructor(props){
        super(props);
        this.update = false;
    }
    componentDidMount(){
        this.props.fetchReviews(this.props.business.id);
    }

    componentDidUpdate(){
        if (this.props.business.reviews.length !== Object.values(this.props.reviews).length && !this.update) {
            this.update = true;
            this.props.fetchReviews(this.props.business.id)
        }
    }

    render(){
        debugger
        return(
            <div>
                <ul className="review-boxes-container">
                    {Object.values(this.props.reviews).map(review => (
                        <div key={review.id}>
                            <ReviewShow currentUser={this.props.currentUser} review={review} updateReview={this.props.updateReview} deleteReview={this.props.deleteReview} business={this.props.business}/>
                        </div>
                    ))}
                </ul>
            </div>
        )
    }
}

export default ReviewIndex