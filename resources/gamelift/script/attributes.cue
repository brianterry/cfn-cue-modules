package script

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// A unique identifier for the Realtime script
	Id: string & =~"^script-\\S+"
	// A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
	CreationTime: string
	// The Amazon Resource Name (ARN) that is assigned to a Amazon GameLift script resource and uniquely identifies it. ARNs are unique across all Regions. In a GameLift script ARN, the resource ID matches the Id value.
	Arn: string & =~"^arn:.*:script\\/script-\\S+"
	// The file size of the uploaded Realtime script, expressed in bytes. When files are uploaded from an S3 location, this value remains at "0".
	SizeOnDisk: int & >=0
}
