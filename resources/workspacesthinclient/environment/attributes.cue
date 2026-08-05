package environment

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Unique identifier of the environment.
	Id: string & =~"^[a-z0-9]{9}$"
	// Activation code for devices associated with environment.
	ActivationCode: string & =~"^[a-z]{2}[a-z0-9]{6}$"
	// The environment ARN.
	Arn: string & =~"^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[0-9]{0,12}:[a-zA-Z0-9\\-\\/\\._]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The timestamp in unix epoch format when environment was created.
	CreatedAt: string
	// The type of VDI.
	DesktopType: "workspaces" | "appstream" | "workspaces-web"
	// Number of devices registered to the environment.
	RegisteredDevicesCount: int & >=0
	// The timestamp in unix epoch format when environment was last updated.
	UpdatedAt: string
	// The ID of the software set that is pending to be installed.
	PendingSoftwareSetId: string & =~"^[0-9]{1,9}$"
	// The version of the software set that is pending to be installed.
	PendingSoftwareSetVersion: string
	// Describes if the software currently installed on all devices in the environment is a supported version.
	SoftwareSetComplianceStatus: "COMPLIANT" | "NOT_COMPLIANT" | "NO_REGISTERED_DEVICES"
}
