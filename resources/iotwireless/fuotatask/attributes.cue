package fuotatask

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// FUOTA task arn. Returned after successful create.
	Arn: string
	// FUOTA task id. Returned after successful create.
	Id: string & strings.MaxRunes(256)
	// FUOTA task status. Returned after successful read.
	FuotaTaskStatus: string
	// FUOTA task LoRaWAN
	LoRaWAN: #LoRaWAN
}
