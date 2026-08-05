package directoryregistration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	DirectoryRegistrationArn: string & =~"^arn:[\\w-]+:pca-connector-ad:[\\w-]+:[0-9]+:directory-registration(\\/[\\w-]+)$" & strings.MinRunes(5) & strings.MaxRunes(200)
}
