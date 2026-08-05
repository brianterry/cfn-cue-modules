package applicationinstance

import "strings"

#Properties: {
	// The ID of an application instance to replace with the new instance.
	ApplicationInstanceIdToReplace?: #ApplicationInstanceId
	// The device's ID.
	DefaultRuntimeContextDevice: #DefaultRuntimeContextDevice
	// A description for the application instance.
	Description?: #Description
	// Setting overrides for the application manifest.
	ManifestOverridesPayload?: #ManifestOverridesPayload
	// The application's manifest document.
	ManifestPayload: #ManifestPayload
	// A name for the application instance.
	Name?: #Name
	// The ARN of a runtime role for the application instance.
	RuntimeRoleArn?: #RuntimeRoleArn
	// Tags for the application instance.
	Tags?: #TagList
}

#ManifestOverridesPayload: {
	// The overrides document.
	PayloadData?: #ManifestOverridesPayloadData
}

#ManifestPayload: {
	// The application manifest.
	PayloadData?: #ManifestPayloadData
}

#Tag: {
	Key: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^.+$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
