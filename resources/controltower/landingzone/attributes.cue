package landingzone

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	LandingZoneIdentifier: string
	Arn: string & =~"^arn:aws[0-9a-zA-Z_\\-:\\/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Status: #LandingZoneStatus
	LatestAvailableVersion: string & =~"\\d+.\\d+" & strings.MinRunes(3) & strings.MaxRunes(10)
	DriftStatus: #LandingZoneDriftStatus
}
