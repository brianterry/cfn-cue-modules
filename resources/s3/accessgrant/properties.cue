package accessgrant

#Properties: {
	// The configuration options of the grant location, which is the S3 path to the data to which you are granting access.
	AccessGrantsLocationConfiguration?: #AccessGrantsLocationConfiguration
	// The custom S3 location to be accessed by the grantee
	AccessGrantsLocationId: string
	// The ARN of the application grantees will use to access the location
	ApplicationArn?: string
	// The principal who will be granted permission to access S3.
	Grantee: #Grantee
	// The level of access to be afforded to the grantee
	Permission: "READ" | "WRITE" | "READWRITE"
	// The type of S3SubPrefix.
	S3PrefixType?: "Object"
	Tags?: [...#Tag]
}

#AccessGrantArn: string

#AccessGrantsLocationConfiguration: {
	// The S3 sub prefix of a registered location in your S3 Access Grants instance
	S3SubPrefix: string
}

#Grantee: {
	// The unique identifier of the Grantee
	GranteeIdentifier: string
	// Configures the transfer acceleration state for an Amazon S3 bucket.
	GranteeType: "IAM" | "DIRECTORY_USER" | "DIRECTORY_GROUP"
}

#Tag: {
	Key: string
	Value: string
}
