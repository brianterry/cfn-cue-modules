package fleet

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Capabilities: #FleetCapabilities
	FleetId: string & =~"^fleet-[0-9a-f]{32}$"
	Status: #FleetStatus
	StatusMessage: string
	WorkerCount: int
	Arn: string & =~"^arn:(aws[a-zA-Z-]*):deadline:[a-z0-9-]+:[0-9]+:farm/farm-[0-9a-z]{32}/fleet/fleet-[0-9a-z]{32}"
}
