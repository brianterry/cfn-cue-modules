package publictypeversion

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Number (ARN) assigned to the public extension upon publication
	PublicTypeArn: string & =~"arn:aws[A-Za-z0-9-]{0,64}:cloudformation:[A-Za-z0-9-]{1,64}:([0-9]{12})?:type/.+" & strings.MaxRunes(1024)
	// The Amazon Resource Number (ARN) of the extension with the versionId.
	TypeVersionArn: string & =~"arn:aws[A-Za-z0-9-]{0,64}:cloudformation:[A-Za-z0-9-]{1,64}:[0-9]{12}:type/.+"
	// The reserved publisher id for this type, or the publisher id assigned by CloudFormation for publishing in this region.
	PublisherId: string & =~"[0-9a-zA-Z-]{1,40}" & strings.MinRunes(1) & strings.MaxRunes(40)
}
