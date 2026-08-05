package resolverdnssecconfig

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// AccountId
	OwnerId: string & strings.MinRunes(12) & strings.MaxRunes(32)
	// Id
	Id: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// ResolverDNSSECValidationStatus, possible values are ENABLING, ENABLED, DISABLING AND DISABLED.
	ValidationStatus: "ENABLING" | "ENABLED" | "DISABLING" | "DISABLED"
}
