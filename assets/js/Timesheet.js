import React from "react";
import PropTypes from "prop-types";
import TimeEntry from "./TimeEntry";
import Header from "./Header";
import "../css/timesheet.scss";

const Timesheet = ({ timeEntries }) => {
  return (
    <div className="timesheet">
      <Header />
      <div className="timesheet__container">
        <div className="time-entry__container">
          {timeEntries.map((timeEntry) => (
            <TimeEntry key={timeEntry.id} timeEntry={timeEntry} />
          ))}
          <span className="timesheet__total-hours">Total hours.</span>
        </div>
      </div>
    </div>
  );
};

Timesheet.propTypes = {
  timeEntries: PropTypes.arrayOf(
    PropTypes.shape({
      id: PropTypes.number,
      started_at: PropTypes.string,
      stopped_at: PropTypes.string,
      seconds: PropTypes.number,
      inserted_at: PropTypes.string,
      updated_at: PropTypes.string,
    })
  ).isRequired,
};

export default Timesheet;
