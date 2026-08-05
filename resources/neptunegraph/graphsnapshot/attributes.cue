package graphsnapshot

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier of the graph snapshot.
	Id: string & =~"^gs-[a-z0-9]{10}$"
	// The ARN of the graph snapshot.
	Arn: string & =~"^arn:.+$" & strings.MinRunes(1) & strings.MaxRunes(1011)
	// The time when the snapshot was created.
	SnapshotCreateTime: string
	// The current status of the graph snapshot.
	Status: "CREATING" | "AVAILABLE" | "DELETING" | "FAILED"
	// The ID of the KMS key used to encrypt and decrypt the snapshot.
	KmsKeyIdentifier: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}
