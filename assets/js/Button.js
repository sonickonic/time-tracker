import React from "react";
import "../css/button.scss";

const Button = ({ label, active, handleClick }) => {
  return <div className={active ? "btn btn--active" : "btn"} onClick={handleClick}>{label}</div>;
};

export default Button;
