import React from "react";
import PropTypes from "prop-types";

import Stopwatch from "./Stopwatch";
import Button from "./Button";

import "../css/button.scss";
import "../css/time-entry.scss";
import "../css/base.scss";

import Edit from "../images/edit.svg";

const TimeEntry = ({ timeEntry }) => {
  const active = timeEntry.stoppedAt === null;

  return (
    <div>
      <div
        className={active ? "time-entry time-entry--selected" : "time-entry"}
      >
        <div className="time-entry__project-container">
          <h3 className="time-entry__title">project</h3>
          <span className="time-entry__clint-name">
            {timeEntry.task.project.name}{" "}
          </span>
          <span className="time-entry__project-name">
            - {timeEntry.task.project.client.name}
          </span>
        </div>
        <div className="time-entry__task-container">
          <h3 className="time-entry__title">task</h3>
          <span className="time-entry__task-name">{timeEntry.task.name}</span>
        </div>
        <div className="time-entry__time-container">
          <Stopwatch timeEntry={timeEntry} />
          <Button label={active ? "stop" : "start"} active={active} />
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
