package profileresourceassociation

#Properties: {
	// The name of an association between the  Profile and resource.
	Name: string
	// The ID of the  profile that you associated the resource to that is specified by ResourceArn.
	ProfileId: string
	// The arn of the resource that you associated to the  Profile.
	ResourceArn: string
	// A JSON-formatted string with key-value pairs specifying the properties of the associated resource.
	ResourceProperties?: string
}
