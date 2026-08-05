package mlflowtrackingserver

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the MLFlow Tracking Server.
	TrackingServerArn: string & =~"^arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:mlflow-tracking-server/.*$" & strings.MaxRunes(2048)
}
