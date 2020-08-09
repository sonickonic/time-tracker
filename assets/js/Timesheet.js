import React from "react";
import PropTypes from "prop-types";

import TimeEntry from "./TimeEntry";

const Timesheet = ({ timeEntries }) => {
  return (
    <>
      {timeEntries.map((timeEntry) => (
        <TimeEntry key={timeEntry.id} timeEntry={timeEntry} />
      ))}
    </>
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
