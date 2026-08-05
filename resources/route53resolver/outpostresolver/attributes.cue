package outpostresolver

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Id
	Id: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// The OutpostResolver ARN.
	Arn: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The OutpostResolver status, possible values are CREATING, OPERATIONAL, UPDATING, DELETING, ACTION_NEEDED, FAILED_CREATION and FAILED_DELETION.
	Status: "CREATING" | "OPERATIONAL" | "DELETING" | "UPDATING" | "ACTION_NEEDED" | "FAILED_CREATION" | "FAILED_DELETION"
	// The OutpostResolver status message.
	StatusMessage: string
	// The OutpostResolver creation time
	CreationTime: string & strings.MinRunes(20) & strings.MaxRunes(40)
	// The OutpostResolver last modified time
	ModificationTime: string & strings.MinRunes(20) & strings.MaxRunes(40)
	// The id of the creator request.
	CreatorRequestId: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
