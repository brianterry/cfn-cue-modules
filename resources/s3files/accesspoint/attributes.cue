package accesspoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	AccessPointId: string & =~"^(arn:aws[-a-z]*:s3files:[0-9a-z-:]+:file-system/fs-[0-9a-f]{17,40}/access-point/fsap-[0-9a-f]{17,40}|fsap-[0-9a-f]{17,40})$" & strings.MaxRunes(256)
	AccessPointArn: string & =~"^arn:aws[-a-z]*:s3files:[0-9a-z-:]+:file-system/fs-[0-9a-f]{17,40}/access-point/fsap-[0-9a-f]{17,40}$" & strings.MaxRunes(256)
	Status: "available" | "creating" | "updating" | "deleting" | "deleted" | "error"
	OwnerId: string & =~"^((\\d{12})|(\\d{4}-\\d{4}-\\d{4}))$" & strings.MaxRunes(12)
}
