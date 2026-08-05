package device

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the device.
	DeviceId: string
	// The Amazon Resource Name (ARN) of the device.
	DeviceArn: string
	// The state of the device.
	State: string
	// The date and time that the device was created.
	CreatedAt: string
}
