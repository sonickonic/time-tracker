import React from "react";
import PropTypes from "prop-types";

import StopWatch from "./StopWatch";

import "../css/button.scss";
import "../css/time-entry.scss";
import "../css/base.scss";

import Edit from "../images/edit.svg";

const TimeEntry = ({ timeEntry }) => {
  return (
    <div>
      <div className="time-entry">
        <div className="time-entry__project-container">
          <h3 className="time-entry__title">project</h3>
          <span className="time-entry__clint-name">MeUndies </span>
          <span className="time-entry__project-name">- web redesign</span>
        </div>
        <div className="time-entry__task-container">
          <h3 className="time-entry__title">task</h3>
          <span className="time-entry__task-name">Programming</span>
        </div>
        <div className="time-entry__time-container">
          <StopWatch timeEntry={timeEntry} />
          <button className="btn btn-start">start</button>
          <button className="btn--edit" aria-label="edit">
            <Edit />
          </button>
        </div>
      </div>
    </div>
  );
};

TimeEntry.propTypes = {
  timeEntry: PropTypes.shape({
    id: PropTypes.number,
    started_at: PropTypes.string,
    stopped_at: PropTypes.string,
    seconds: PropTypes.number,
    inserted_at: PropTypes.string,
    updated_at: PropTypes.string,
  }).isRequired,
};

export default TimeEntry;
