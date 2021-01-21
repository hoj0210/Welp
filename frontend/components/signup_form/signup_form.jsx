import React from 'react';
import { Link } from 'react-router-dom';

class SignupForm extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            fname: "",
            lname: "",
            email: "",
            password: "",
            zip_code: "",
            birthday: ""
        };
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    handleChange(type){
        return (e) => (
            this.setState({[type]: e.currentTarget.value})
        )
    }

    handleSubmit(e){
        e.preventDefault();
        this.props.processForm(this.state).then(() => this.props.history.push('/'))
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

    render() {
        return(
            <form onSubmit={this.handleSubmit}>
                <h2>Sign Up for Welp</h2>
                <h3>Connect with great local businesses</h3>
                {this.renderErrors()}
                <label>First Name
                    <input type="text" value={this.state.fname} onChange={this.handleChange('fname')}/>
                </label>
                <label>Last Name
                    <input type="text" value={this.state.lname} onChange={this.handleChange('lname')} />
                </label>
                <label>Email
                    <input type="text" value={this.state.email} onChange={this.handleChange('email')} />
                </label>
                <label>Password
                    <input type="password" value={this.state.password} onChange={this.handleChange('password')} />
                </label>
                <label>ZIP Code
                    <input type="text" value={this.state.zip_code} onChange={this.handleChange('zip_code')} />
                </label>
                <label>Birthday Optional
                    <input type="date" value={this.state.birthday} onChange={this.handleChange('birthday')} />
                </label>
                <button>Sign Up</button>
                <h6>Already on Yelp?</h6>
                <Link to='/login'>Log in</Link>
            </form>
        )
    }
}

export default SignupForm