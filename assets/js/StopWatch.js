import React from "react";
import "../css/time-entry.scss";

const StopWatch = ({ timeEntry }) => {
  return <div className="time-entry__clock">{timeEntry.seconds}</div>;
};

export default StopWatch;
