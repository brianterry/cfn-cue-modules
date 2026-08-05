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

#ApplicationInstanceArn: string & strings.MinRunes(1) & strings.MaxRunes(255)

#ApplicationInstanceHealthStatus: "RUNNING" | "ERROR" | "NOT_AVAILABLE"

#ApplicationInstanceId: string & =~"^[a-zA-Z0-9\\-\\_]+$" & strings.MinRunes(1) & strings.MaxRunes(255)

#ApplicationInstanceStatus: "DEPLOYMENT_PENDING" | "DEPLOYMENT_REQUESTED" | "DEPLOYMENT_IN_PROGRESS" | "DEPLOYMENT_ERROR" | "DEPLOYMENT_SUCCEEDED" | "REMOVAL_PENDING" | "REMOVAL_REQUESTED" | "REMOVAL_IN_PROGRESS" | "REMOVAL_FAILED" | "REMOVAL_SUCCEEDED"

#ApplicationInstanceStatusDescription: string & strings.MinRunes(1) & strings.MaxRunes(255)

#DefaultRuntimeContextDevice: string & =~"^[a-zA-Z0-9\\-\\_]+$" & strings.MinRunes(1) & strings.MaxRunes(255)

#Description: string & =~"^.*$" & strings.MinRunes(0) & strings.MaxRunes(255)

#DeviceId: string & =~"^[a-zA-Z0-9\\-\\_]+$" & strings.MinRunes(1) & strings.MaxRunes(255)

#DeviceName: string & =~"^[a-zA-Z0-9\\-\\_]+$" & strings.MinRunes(1) & strings.MaxRunes(255)

#ManifestOverridesPayload: {
	// The overrides document.
	PayloadData?: #ManifestOverridesPayloadData
}

#ManifestOverridesPayloadData: string & =~"^.+$" & strings.MinRunes(0) & strings.MaxRunes(51200)

#ManifestPayload: {
	// The application manifest.
	PayloadData?: #ManifestPayloadData
}

#ManifestPayloadData: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(51200)

#Name: string & =~"^[a-zA-Z0-9\\-\\_]+$" & strings.MinRunes(1) & strings.MaxRunes(255)

#RuntimeRoleArn: string & =~"^arn:[a-z0-9][-.a-z0-9]{0,62}:iam::[0-9]{12}:role/.+$" & strings.MinRunes(1) & strings.MaxRunes(255)

#StatusFilter: "DEPLOYMENT_SUCCEEDED" | "DEPLOYMENT_ERROR" | "REMOVAL_SUCCEEDED" | "REMOVAL_FAILED" | "PROCESSING_DEPLOYMENT" | "PROCESSING_REMOVAL"

#Tag: {
	Key: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^.+$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TagList: [...#Tag]

#Timestamp: int
