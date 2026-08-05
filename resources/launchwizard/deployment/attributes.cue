package deployment

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// ARN of the LaunchWizard deployment
	Arn: string & =~"^arn:aws(-cn|-us-gov)?:launchwizard:[a-z0-9-]+:[0-9]{12}:deployment/([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})$"
	// Timestamp of LaunchWizard deployment creation
	CreatedAt: string
	// Timestamp of LaunchWizard deployment deletion
	DeletedAt: string
	// Deployment ID of the LaunchWizard deployment
	DeploymentId: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(2) & strings.MaxRunes(128)
	// Resource Group Name created for LaunchWizard deployment
	ResourceGroup: string
	// Status of LaunchWizard deployment
	Status: #DeploymentStatus
}
