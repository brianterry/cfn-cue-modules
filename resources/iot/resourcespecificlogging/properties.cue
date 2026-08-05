package resourcespecificlogging

import "strings"

#Properties: {
	// The log level for a specific target. Valid values are: ERROR, WARN, INFO, DEBUG, or DISABLED.
	LogLevel: "ERROR" | "WARN" | "INFO" | "DEBUG" | "DISABLED"
	// The target name.
	TargetName: string & =~"[a-zA-Z0-9.:\\s_\\-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The target type. Value must be THING_GROUP, CLIENT_ID, SOURCE_IP, PRINCIPAL_ID, or EVENT_TYPE.
	TargetType: "THING_GROUP" | "CLIENT_ID" | "SOURCE_IP" | "PRINCIPAL_ID" | "EVENT_TYPE"
}
