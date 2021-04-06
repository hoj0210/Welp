import React from 'react'
import { Link } from 'react-router-dom';

const Categories = props => (
    <div>
        <h1 className="category-title">Browse Businesses by Category</h1>
        <div className="categories-container">
            <div className="category">
                <div className="category-1-container">
                    <img src="http://d5yem10y0aabn.cloudfront.net/categories/restaurant_icon.png" alt=""/>
                    <p className="category-icon-text">Restaurants</p>
                </div>
            </div>
            <div className="category">
                <div className="category-2-container">
                    <img src="http://d5yem10y0aabn.cloudfront.net/categories/shopping_icon.png" />
                    <p className="category-icon-text-1">Shopping</p>
                </div>
            </div>
            <div className="category">
                <div className="category-3-container">
                    <img src="http://d5yem10y0aabn.cloudfront.net/categories/car_icon.png" />
                    <p className="category-icon-text">Automotive</p>
                </div>
            </div>
            <div className="category">
                <div className="category-1-container">
                    <img src="http://d5yem10y0aabn.cloudfront.net/categories/nightlife_icon.png" />
                    <p className="category-icon-text">Nightlife</p>
                </div>
            </div>
        </div>
    </div>
)

export default Categories;