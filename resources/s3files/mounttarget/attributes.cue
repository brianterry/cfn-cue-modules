package mounttarget

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	MountTargetId: string & =~"^fsmt-[0-9a-f]{17,40}$" & strings.MinRunes(22) & strings.MaxRunes(45)
	AvailabilityZoneId: string
	OwnerId: string & =~"^((\\d{12})|(\\d{4}-\\d{4}-\\d{4}))$" & strings.MaxRunes(12)
	NetworkInterfaceId: string
	VpcId: string
	Status: "available" | "creating" | "updating" | "deleting" | "deleted" | "error"
	StatusMessage: string
}
