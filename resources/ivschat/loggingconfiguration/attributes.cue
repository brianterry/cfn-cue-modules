package loggingconfiguration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// LoggingConfiguration ARN is automatically generated on creation and assigned as the unique identifier.
	Arn: string & =~"^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:logging-configuration/[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The system-generated ID of the logging configuration.
	Id: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(12) & strings.MaxRunes(12)
	// The state of the logging configuration. When the state is ACTIVE, the configuration is ready to log chat content.
	State: "CREATING" | "CREATE_FAILED" | "DELETING" | "DELETE_FAILED" | "UPDATING" | "UPDATING_FAILED" | "ACTIVE"
}
