import React from "react";
import TimeEntry from "./TimeEntry";

const Timesheet = ({ timeEntries }) => {
  return (
    <>
      {timeEntries.map((timeEntry) => (
        <TimeEntry timeEntry={timeEntry} />
      ))}
    </>
  );
};

export default Timesheet;
