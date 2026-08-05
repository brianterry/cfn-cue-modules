package environment

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Unique identifier for representing FinSpace Environment
	EnvironmentId: string & =~"^[a-zA-Z0-9]{1,26}$"
	// State of the Environment
	Status: "CREATE_REQUESTED" | "CREATING" | "CREATED" | "DELETE_REQUESTED" | "DELETING" | "DELETED" | "FAILED_CREATION" | "FAILED_DELETION" | "RETRY_DELETION" | "SUSPENDED"
	// SageMaker Studio Domain URL associated with the Environment
	SageMakerStudioDomainUrl: string & =~"^[a-zA-Z-0-9-:\\/.]*{1,1000}$"
	// ARN of the Environment
	EnvironmentArn: string & =~"^arn:aws:finspace:[A-Za-z0-9_/.-]{0,63}:\\d+:environment/[0-9A-Za-z_-]{1,128}$"
	// URL used to login to the Environment
	EnvironmentUrl: string & =~"^[-a-zA-Z0-9+&amp;@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&amp;@#/%=~_|]{1,1000}"
	// AWS account ID associated with the Environment
	AwsAccountId: string & =~"^[a-zA-Z0-9]{1,26}$"
	// ID for FinSpace created account used to store Environment artifacts
	DedicatedServiceAccountId: string & =~"^[a-zA-Z0-9]{1,26}$"
}
