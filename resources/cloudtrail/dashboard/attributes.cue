package dashboard

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the dashboard.
	DashboardArn: string & =~"^[a-zA-Z0-9._/\\-:]+$"
	// The timestamp of the dashboard creation.
	CreatedTimestamp: #Timestamp
	// The timestamp showing when the dashboard was updated, if applicable. UpdatedTimestamp is always either the same or newer than the time shown in CreatedTimestamp.
	UpdatedTimestamp: #Timestamp
	// The status of the dashboard. Values are CREATING, CREATED, UPDATING, UPDATED and DELETING.
	Status: "CREATING" | "CREATED" | "UPDATING" | "UPDATED" | "DELETING"
	// The type of the dashboard. Values are CUSTOM and MANAGED.
	Type: "MANAGED" | "CUSTOM"
}
