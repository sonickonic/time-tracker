import React, { Component } from "react";
import "../css/dialog.scss";
import Button from "./Button";

const Dialog = ({ isOpen, handleClick }) => {
  return (
    <div className={`dialog__backdrop ${isOpen && "dialog__backdrop--open"}`}>
      <div className="dialog">
        <h2 className="dialog__title">New Time Entry</h2>
        <form>
          <Button label="start" active />
          <Button handleClick={handleClick} label="cancel" />
        </form>
      </div>
    </div>
  );
};

export default Dialog;
