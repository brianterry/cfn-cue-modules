package multicastgroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Multicast group arn. Returned after successful create.
	Arn: string
	// Multicast group id. Returned after successful create.
	Id: string & strings.MaxRunes(256)
	// Multicast group status. Returned after successful read.
	Status: string
	// Multicast group LoRaWAN
	LoRaWAN: #LoRaWAN
}
