package dataautomationlibrary

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Time Stamp
	CreationTime: string
	// List of info for each entity type in the DataAutomationLibrary
	EntityTypes: [...#EntityTypeInfo]
	// ARN generated at the server side when a DataAutomationLibrary is created
	LibraryArn: string & =~"^arn:aws(|-cn|-iso|-iso-[a-z]|-us-gov):bedrock:[a-zA-Z0-9-]*:[0-9]{12}:data-automation-library/[a-zA-Z0-9-]{12,36}$" & strings.MaxRunes(128)
	Status: #DataAutomationLibraryStatus
}
