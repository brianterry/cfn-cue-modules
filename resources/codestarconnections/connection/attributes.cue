package connection

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the  connection. The ARN is used as the connection reference when the connection is shared between AWS services.
	ConnectionArn: string & =~"arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+" & strings.MinRunes(0) & strings.MaxRunes(256)
	// The current status of the connection.
	ConnectionStatus: string
	// The name of the external provider where your third-party code repository is configured. For Bitbucket, this is the account ID of the owner of the Bitbucket repository.
	OwnerAccountId: string & =~"[0-9]{12}" & strings.MinRunes(12) & strings.MaxRunes(12)
}
