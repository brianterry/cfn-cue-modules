package actionconnector

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string
	CreatedTime: string
	EnabledActions: [...string & =~"^[\\w@:_.,!?+-/]+$"]
	LastUpdatedTime: string
	Status: #ResourceStatus
}
