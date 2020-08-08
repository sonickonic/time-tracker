import React from "react";
import StopWatch from "./StopWatch";

import "../css/button.scss";
import "../css/time-entry.scss";
import "../css/base.scss"

import Edit from "../images/edit.svg";

const TimeEntry = () => {
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
          <StopWatch />
          <button className="btn btn-start">start</button>
          <button className="btn--edit" aria-label="edit">
            <Edit />
          </button>
        </div>
      </div>
    </div>
  );
};

export default TimeEntry;
