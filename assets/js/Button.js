import React from "react";
import "../css/button.scss";

const Button = ({ label, active }) => {
  return <div className={active ? "btn btn--active" : "btn"}>{label}</div>;
};

export default Button;
