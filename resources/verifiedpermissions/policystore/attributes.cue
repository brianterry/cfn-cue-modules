package policystore

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:[^:]*:[^:]*:[^:]*:[^:]*:.*$" & strings.MinRunes(1) & strings.MaxRunes(2500)
	PolicyStoreId: string & =~"^[a-zA-Z0-9-]*$" & strings.MinRunes(1) & strings.MaxRunes(200)
	EncryptionState: {
	KmsEncryptionState: #KmsEncryptionState
} | {
	Default: #Default
}
}
