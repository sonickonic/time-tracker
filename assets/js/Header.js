import React from "react";
import "../css/header.scss";
import Button from "./Button";

const Header = ({ handleClick }) => {
  return (
    <div className="header">
      <h2 className="header__title">Monday, 03 Aug</h2>
      <Button handleClick={handleClick} label="add entry" />
    </div>
  );
};

export default Header;
