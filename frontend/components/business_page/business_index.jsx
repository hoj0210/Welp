import React from 'react';
import {Link} from 'react-router-dom';
import SearchBox from '../search_box/search_box';
import NavBar from '../nav_bar/nav_bar';
import About from '../about/about';

class BusinessIndex extends React.Component{
    constructor(props){
        super(props);
    }

    componentDidMount(){
        this.props.fetchBusinesses();
    }

    render(){
        if (Object.keys(this.props.businesses).length === 0) {
            debugger
            return (
                <div>Loading..</div>
            )
        } else {
            debugger
            return(
                <div>
                    {this.props.businesses.map(business => {
                        return(
                            <div>
                                {business.name}
                            </div>
                        )
                    })}
                </div>
            )
        }
    }
}

export default BusinessIndex