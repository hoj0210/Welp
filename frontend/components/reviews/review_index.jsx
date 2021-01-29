import React from 'react';

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
        return(
            <div>
                <ul>
                    {Object.values(this.props.reviews).map(review => (
                        <div>
                            <li key={review.id}>{review.message}</li>
                            <li key={review.id}>{review.rating}</li>
                        </div>
                    ))}
                </ul>
            </div>
        )
    }
}

export default ReviewIndex