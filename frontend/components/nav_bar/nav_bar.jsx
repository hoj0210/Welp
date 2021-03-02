import React from 'react';
import { Link } from 'react-router-dom';
import { LOGOUT_CURRENT_USER } from '../../actions/session_actions';
//import SearchBoxContainer 

class NavBar extends React.Component {
    constructor(props){
        super(props)
        if (this.props.formType === "splash") {
            this.type = "splash"
        } else if (this.props.formType === "other_pages") {
            this.type = "other_pages"
        } else if (this.props.formType === "review_pages") {
            this.type = "review_pages"
        }
    }
    chooseProfile(){
        if (this.props.currentUser.profile_pic === "ross") {
            return window.ross
        } else if (this.props.currentUser.profile_pic === "chandler") {
            return window.chandler
        } else if (this.props.currentUser.profile_pic === "joey") {
            return window.joey
        } else if (this.props.currentUser.profile_pic === "phoebe") {
            return window.phoebe
        } else if (this.props.currentUser.profile_pic === "rachel") {
            return window.rachel
        } else if (this.props.currentUser.profile_pic === "monica") {
            return window.monica
        }
    }
    handleClick(){
        //debugger
        document.getElementById("myDropdown").classList.toggle("show");
    }

    notInSession(){
        return(
            <nav className={`login-signup${this.type}`}>
                <Link to="/login"><button className={`session-button1${this.type}`}>Log In</button></Link>
                {/* <button className={`session-button1${this.type}`} onClick={() => this.props.history.push('/login')}>Log In</button> */}
                <Link to="/signup"><button className={`session-button2${this.type}`}>Sign Up</button></Link>
            </nav>
        )
    }

    inSession(){
        return(
            <div className={`nav-loggedin-${this.type}`}>
                {/* <button className={`logout-button${this.type}`} onClick={() => props.logout()}>Log Out</button> */}
                <div className={`dropdown-${this.type}`}>
                    <div className="drpbtwn">
                        <button onClick={() => this.handleClick()}className="signed-on-button">
                            <img className="profile" src={this.chooseProfile()} />
                            <img className="down-arrow" src={window.downArrow} />
                        </button>
                    </div>
                    <div id="myDropdown" className={`dropdown-content-${this.type}`}>
                        <div className="dropdown-profile">
                            <img className="profile-inner" src={this.chooseProfile()} />
                            <div className="dropdown-profile-text">
                                <div className="dropdown-profile-name">{`${this.props.currentUser.fname} ${this.props.currentUser.lname.slice(0, 1)}.`}</div>
                                <div className="dropdown-profile-addy">{`${this.props.currentUser.zip_code}`}</div>
                            </div>
                        </div>
                        <button className={`logout-button${this.type}`} onClick={() => this.props.logout()}>Log Out</button>
                    </div>
                </div>
            </div>
        )
    }

    render(){
        return (
            <div>
                {this.props.currentUser ? this.inSession() : this.notInSession()}
                {/* <SearchBoxContainer/> */}
            </div>
        )
    }

}

// const NavBar = props => {
//     // debugger
//     const type = (props.formType === "splash") ? "splash" : "other_pages";
//     // const link = (props.formType === "splash") ? "/login" : `/business/${props.businessId}`;

//     const notInSession = () => (
//         <nav className={`login-signup${type}`}>
//             <Link to="/login"><button className={`session-button1${type}`}>Log In</button></Link>
//             <Link to="/signup"><button className={`session-button2${type}`}>Sign Up</button></Link>
//         </nav>
//     );

//     const inSession = () => (
//         <div className="nav-loggedin">
//             {/* <button className={`logout-button${type}`} onClick={() => props.logout()}>Log Out</button> */}
//             <div className="dropdown">
//                 <div>
//                     <img className="profile" src={window.defaultProfile}/>
//                     <img className="down-arrow" src={window.downArrow}/>
//                 </div>
//                 <div id="myDropdown" className="dropdown-content">
//                     <div className="dropdown-profile">
//                         <img className="profile-inner" src={window.defaultProfile}/>
//                         <div className="dropdown-profile-text">
//                             <div className="dropdown-profile-name">{`${props.currentUser.fname} ${props.currentUser.lname.slice(0, 1)}.`}</div>
//                             <div className="dropdown-profile-addy">{`${props.currentUser.zip_code}`}</div>
//                         </div>
//                     </div>
//                     <button className={`logout-button${type}`} onClick={() => props.logout()}>Log Out</button>
//                 </div>
//             </div>
//         </div>
//     )

//     return (
//         <div>
//             {props.currentUser ? inSession() : notInSession()}
//             {/* <SearchBoxContainer/> */}
//         </div>

//     )
// }

export default NavBar