import React from "react";
import Select from "react-select";

const projectsOptions = [
  { value: "ocean", label: "Ocean", color: "#00B8D9" },
  { value: "blue", label: "Blue", color: "#0052CC" },
  { value: "purple", label: "Purple", color: "#5243AA" },
];

const groupedOptions = [
  {
    label: "Projects",
    options: projectsOptions,
  },
];

const groupStyles = {
  display: "flex",
  alignItems: "center",
  justifyContent: "space-between",
};
const groupBadgeStyles = {
  backgroundColor: "#EBECF0",
  borderRadius: "2em",
  color: "#172B4D",
  display: "inline-block",
  fontWeight: "normal",
  lineHeight: "1",
  minWidth: 1,
  padding: "0.16em 0.5em",
  textAlign: "center",
};

const formatGroupLabel = (data) => (
  <div style={groupStyles}>
    <span>{data.label}</span>
    <span style={groupBadgeStyles}>{data.options.length}</span>
  </div>
);

export default () => (
  <Select
    defaultValue={projectsOptions[1]}
    options={groupedOptions}
    formatGroupLabel={formatGroupLabel}
  />
);
