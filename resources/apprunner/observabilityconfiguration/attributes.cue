package observabilityconfiguration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of this ObservabilityConfiguration
	ObservabilityConfigurationArn: string & =~"arn:aws(-[\\w]+)*:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[0-9]{12}:(\\w|/|-){1,1011}" & strings.MinRunes(1) & strings.MaxRunes(1011)
	// The revision of this observability configuration. It's unique among all the active configurations ('Status': 'ACTIVE') that share the same ObservabilityConfigurationName.
	ObservabilityConfigurationRevision: int
	// It's set to true for the configuration with the highest Revision among all configurations that share the same Name. It's set to false otherwise.
	Latest: bool
}
