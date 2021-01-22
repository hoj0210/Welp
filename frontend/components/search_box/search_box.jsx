import React from 'react';
import {Link} from 'react-router-dom';

class SearchBox extends React.Component {
    // constructor(props){
    //     this.props(props)
    // }

    handleSubmit(e){
        e.preventDefault()
    }

    render(){
        return(
            <div className="search-box-container">
                <div className="search-box">
                    <form>
                        <div className="search-texts">
                            <label>Find
                                <input type="text" />
                            </label>
                            <label>Near
                                <input type="text" />
                            </label>
                        </div>
                        
                    </form>
                </div>
                <p className="search-box-text">This is the search Bar</p>  
            </div>
        )
    }
}

export default SearchBox