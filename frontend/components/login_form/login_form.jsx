import React from 'react';
import { Link } from 'react-router-dom';

class LoginForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            email: "",
            password: ""
        }
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    handleChange(type){
        return e => (
            this.setState({[type]: e.currentTarget.value})
        )
    }

    handleSubmit(e){
        e.preventDefault();
        this.props.processForm(this.state).then(() => this.props.history.push(`/`))
    }

    renderErrors() {
        return (
            <ul>
                {this.props.errors.map((error, i) => (
                    <li key={i}>{error}</li>
                ))}
            </ul>
        )
    }

    render(){
        return(
            <form onSubmit={this.handleSubmit}>
                <h2>Log in to Yelp</h2>
                {this.renderErrors()}
                <p>New to Yelp? <Link to='/signup'>Sign up</Link> </p>
                <label>Email:
                    <input type="text" value={this.state.email} onChange={this.handleChange("email")}/>
                </label>
                <label>Password:
                    <input type="password" value={this.state.password} onChange={this.handleChange("password")} />
                </label>
                <button>Log In</button>
            </form>
        )
    }
}

export default LoginForm