package dashboard

#Properties: {
	// The dashboard definition specified in a JSON literal.
	DashboardDefinition: string
	// A description for the dashboard.
	DashboardDescription: string
	// A friendly name for the dashboard.
	DashboardName: string
	// The ID of the project in which to create the dashboard.
	ProjectId?: string
	// A list of key-value pairs that contain metadata for the dashboard.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
