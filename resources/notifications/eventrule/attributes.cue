package eventrule

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:[a-z-]{3,10}:notifications::[0-9]{12}:configuration/[a-z0-9]{27}/rule/[a-z0-9]{27}$"
	CreationTime: string
	ManagedRules: [...string & =~"^arn:[a-z-]{3,10}:events:[a-z-\\d]{2,25}:\\d{12}:rule\\/[a-zA-Z-\\d]{1,1024}$"]
	StatusSummaryByRegion: #StatusSummaryByRegion
}
