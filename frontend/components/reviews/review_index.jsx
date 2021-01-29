import React from 'react';
import ReviewShow from './review_show'

class ReviewIndex extends React.Component {
    componentDidMount(){
        this.props.fetchReviews(this.props.business.id);
    }

    componentDidUpdate(){
        if (this.props.business.reviews.length !== Object.values(this.props.reviews).length) {
            this.props.fetchReviews(this.props.business.id)
        }
    }

    render(){
        debugger
        return(
            <div>
                <ul>
                    {Object.values(this.props.reviews).map(review => (
                        <div key={review.id}>
                            <ReviewShow review={review}/>
                        </div>
                    ))}
                </ul>
            </div>
        )
    }
}

export default ReviewIndex