import React, { isValidElement } from 'react'; 
import { Link } from 'react-router-dom'

const NewBusinesses = props => (
    <div>
        <h1 className="splash-box-title">Yelp Irvine</h1>
        <h3 className="splash-box-title-hotandnew">Hot & New Businesses</h3>
        <div className="new-businesses-container">
            <div className="new-businesses-items-box">
                <div className="new-businesses-item">
                    <div className="new-businesses-item-pic-c">
                        <Link to="/businesses/9"><img className="new-businesses-item-pic" src={window.tacoPlace} /></Link>
                    </div>
                    <div className="new-businesses-item-info">
                        <Link to="/businesses/9" className="new-business-item-bname-tacos">Tacos El Gordo</Link>
                        <br/>
                        <img src={window.fiveStar} className="splash-star"/>
                        <div className="splash-review-text">3 reviews</div>
                        <div className="category-city-state">Tacos, Mexican, Lunch</div>
                        <div className="category-city-state">Cerritos, CA</div>
                        <div className="opened-recent"><img className="fire" src={window.fire} />Opened a few days ago</div>
                    </div>
                </div>
                <div className="new-businesses-item">
                    <div className="new-businesses-item-pic-c">
                        <Link to="/businesses/10"><img className="new-businesses-item-pic" src={window.sushiPlace} /></Link>
                    </div>
                    <div className="new-businesses-item-info">
                        <Link to="/businesses/10" className="new-business-item-bname-sushi">I Heart Sushi</Link>
                        <br/>
                        <img src={window.threeStar} className="splash-star-three" />
                        <div className="splash-review-text">3 reviews</div>
                        <div className="category-city-state">Sushi, Japanese, Dinner</div>
                        <div className="category-city-state">Irvine, CA</div>
                        <div className="opened-recent"><img className="fire" src={window.fire} />Opened 6 weeks ago</div>
                    </div>
                </div>
                <div className="new-businesses-item">
                    <div className="new-businesses-item-pic-c">
                        <Link to="/businesses/11"><img className="new-businesses-item-pic" src={window.kbbqPlace} /></Link>
                    </div>
                    <div className="new-businesses-item-info">
                        <Link to="/businesses/11q" className="new-business-item-bname-kbbq">JongRo</Link>
                        <br/>
                        <img src={window.fiveStar} className="splash-star" />
                        <div className="splash-review-text">2 reviews</div>
                        <div className="category-city-state">Kbbq, Korean, Dinner</div>
                        <div className="category-city-state">Tustin, CA</div>
                        <div className="opened-recent"><img className="fire" src={window.fire} />Opened 2 weeks ago</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
)

export default NewBusinesses