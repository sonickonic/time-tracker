import React from "react";
import PropTypes from "prop-types";

import "../css/time-entry.scss";

const StopWatch = ({ timeEntry }) => {
  return <div className="time-entry__clock">{timeEntry.seconds}</div>;
};

StopWatch.propTypes = {
  timeEntry: PropTypes.shape({
    id: PropTypes.number,
    started_at: PropTypes.string,
    stopped_at: PropTypes.string,
    seconds: PropTypes.number,
    inserted_at: PropTypes.string,
    updated_at: PropTypes.string,
  }).isRequired,
};

export default StopWatch;
