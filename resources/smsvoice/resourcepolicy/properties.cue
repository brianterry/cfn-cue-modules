package resourcepolicy

#Properties: {
	// The JSON formatted resource-based policy to attach.
	PolicyDocument: {...}
	// The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and Voice resource to attach the resource-based policy to.
	ResourceArn: string & =~"^arn:\\S+$"
}
