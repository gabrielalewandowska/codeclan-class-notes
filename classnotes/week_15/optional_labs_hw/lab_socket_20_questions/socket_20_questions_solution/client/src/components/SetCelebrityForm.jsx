import React from 'react'

class SetCelebrityForm extends React.Component {

  constructor(props) {
    super(props)
    this.state = {
      celebrity: ""
    }
  }

  setCelebrity(event) {
    event.preventDefault()
    const celebrity = this.state.celebrity
    this.props.handleCelebritySubmit(celebrity)
  }

  questionKeyUp(event) {
    this.setState({ celebrity: event.target.value })
  }

  revealCelebrity() {
    this.props.onCelebrityReveal(this.state.submittedCelebrity)
  }

  render() {
    return (
      <form id="choose-celebrity-form" onSubmit={this.setCelebrity.bind(this)}>
        <input 
          id="choose-celebrity-text-input" 
          type="text" 
          placeholder="Choose a celebrity" 
          onChange={this.questionKeyUp.bind(this) } 
          value={ this.state.celebrity } 
        />
        <input 
          id="choose-celebrity-submit-input" 
          type="submit" 
          value="Submit" 
        />
      </form>
    )
  }

}

export default SetCelebrityForm
