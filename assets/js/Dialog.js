import React, { Component } from "react";
import "../css/dialog.scss";
import Button from "./Button";
import Select from "./Select";

const Dialog = ({ isOpen, handleClick }) => {
  const data = { task_id: 1, started_at: new Date() };

  const fetchData = () => {
    fetch("/api/v1/time_entries", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(data),
    });
  };

  return (
    <div className={`dialog__backdrop ${isOpen && "dialog__backdrop--open"}`}>
      <div className="dialog">
        <h2 className="dialog__title">New Time Entry</h2>
        <form>
          <Select />
          <Button handleClick={fetchData} label="start" active />
          <Button handleClick={handleClick} label="cancel" />
        </form>
      </div>
    </div>
  );
};

export default Dialog;
