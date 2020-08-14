import React from "react";
import "../css/navigation.scss";
import Logo from "../images/logo.svg";

const Navigation = () => {
  return (
    <div className="navigation">
      <Logo />
      <ul className="navigation__list">
        <li className="navigation__list-item">Timesheet</li>
      </ul>
    </div>
  );
};

export default Navigation;
