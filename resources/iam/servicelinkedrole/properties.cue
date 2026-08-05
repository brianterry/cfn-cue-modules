package servicelinkedrole

#Properties: {
	// The service principal for the AWS service to which this role is attached.
	AWSServiceName?: string
	// A string that you provide, which is combined with the service-provided prefix to form the complete role name.
	CustomSuffix?: string
	// The description of the role.
	Description?: string
}
