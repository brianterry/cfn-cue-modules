package servicelevelobjective

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of this SLO.
	Arn: string & =~"^arn:[^:]*:application-signals:[^:]*:[^:]*:slo\\/[0-9A-Za-z][-._0-9A-Za-z ]{0,126}[0-9A-Za-z]$"
	// Epoch time in seconds of the time that this SLO was created
	CreatedTime: int & >=946684800
	// Epoch time in seconds of the time that this SLO was most recently updated
	LastUpdatedTime: int & >=946684800
	// Displays whether this is a period-based SLO or a request-based SLO.
	EvaluationType: "PeriodBased" | "RequestBased"
}
