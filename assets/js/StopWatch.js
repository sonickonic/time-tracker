import React, { useState, useEffect } from "react";
import PropTypes from "prop-types";
import moment from "moment";
import momentDurationFormatSetup from "moment-duration-format";

momentDurationFormatSetup(moment);

import "../css/time-entry.scss";

const Stopwatch = ({ timeEntry }) => {
  const [duration, setDuration] = useState(0);

  const updateDuration = () => {
    const currentTime = moment();
    const startTime = moment(timeEntry.startedAt);
    const timeDiff = currentTime.diff(startTime);
    const duration = moment.duration(timeDiff);

    setDuration(duration);
  };

  useEffect(() => {
    const id = setInterval(updateDuration, 1000);

    return () => clearInterval(id);
  }, []);

  return (
    <div className="time-entry__clock">
      {duration ? duration.format("h:mm") : ""}
    </div>
  );
};

Stopwatch.propTypes = {
  timeEntry: PropTypes.shape({
    id: PropTypes.number,
    started_at: PropTypes.string,
    stopped_at: PropTypes.string,
    seconds: PropTypes.number,
    inserted_at: PropTypes.string,
    updated_at: PropTypes.string,
  }).isRequired,
};

export default Stopwatch;
