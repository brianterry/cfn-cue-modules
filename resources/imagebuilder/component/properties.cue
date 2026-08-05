package component

import "strings"

#Properties: {
	// The change description of the component.
	ChangeDescription?: string
	// The data of the component.
	Data?: string & strings.MinRunes(1) & strings.MaxRunes(16000)
	// The description of the component.
	Description?: string
	// The KMS key identifier used to encrypt the component.
	KmsKeyId?: string
	// The name of the component.
	Name: string
	// The platform of the component.
	Platform: "Windows" | "Linux" | "macOS"
	// The operating system (OS) version supported by the component.
	SupportedOsVersions?: [...string]
	// The tags associated with the component.
	Tags?: {...}
	// The uri of the component.
	Uri?: string
	// The version of the component.
	Version: string
}

#LatestVersion: {
	// The latest version ARN of the created component.
	Arn?: string
	// The latest version ARN of the created component, with the same major version.
	Major?: string
	// The latest version ARN of the created component, with the same minor version.
	Minor?: string
	// The latest version ARN of the created component, with the same patch version.
	Patch?: string
}
