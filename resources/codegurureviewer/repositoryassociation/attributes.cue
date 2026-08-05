package repositoryassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the repository association.
	AssociationArn: string & =~"arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+" & strings.MinRunes(0) & strings.MaxRunes(256)
}
