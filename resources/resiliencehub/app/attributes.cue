package app

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Amazon Resource Name (ARN) of the App.
	AppArn: string & =~"^arn:(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:([a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]):[0-9]{12}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"
	// Indicates if compliance drifts (deviations) were detected while running an assessment for your application.
	DriftStatus: "NotChecked" | "NotDetected" | "Detected"
}
