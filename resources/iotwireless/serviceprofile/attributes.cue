package serviceprofile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Service profile Id. Returned after successful create.
	Id: string & strings.MaxRunes(256)
	// Service profile Arn. Returned after successful create.
	Arn: string
	// LoRaWAN supports all LoRa specific attributes for service profile for CreateServiceProfile operation
	LoRaWAN: #LoRaWANServiceProfile
}
