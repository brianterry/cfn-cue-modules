package dashboard

import "strings"

#Properties: {
	// The detailed information about the dashboard in JSON format, including the widgets to include and their location on the dashboard
	DashboardBody: string
	// The name of the dashboard. The name must be between 1 and 255 characters. If you do not specify a name, one will be generated automatically.
	DashboardName?: string
	// A list of key-value pairs to associate with the cloudwatch dashboard. You can associate up to 50 tags with a dashboard
	Tags?: [...#Tag]
}

#Tag: {
	// A unique identifier for the tag. The combination of tag keys and values can help you organize and categorize your resources.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the specified tag key.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
