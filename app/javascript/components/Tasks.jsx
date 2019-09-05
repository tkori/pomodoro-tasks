import React from "react"
import PropTypes from "prop-types"

class Timer extends React.Component {
  constructor(props) {
    super(props);
    this.state = { seconds: 1500 };
  }

  tick() {
    this.setState(state => ({
      seconds: state.seconds - 1
    }));
  }

  componentDidMount() {
    this.interval = setInterval(() => this.tick(), 1000);
  }
}

// Timer.propTypes = {
//   : PropTypes.array
// };

export default Timer;