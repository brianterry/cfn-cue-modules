package harnessendpoint

import "strings"

#Properties: {
	// The description of the endpoint.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name of the endpoint. Must start with a letter and contain only alphanumeric characters and underscores.
	EndpointName: string & =~"^[a-zA-Z][a-zA-Z0-9_]{0,47}$"
	// The ID of the harness that the endpoint belongs to.
	HarnessId: string & =~"^[a-zA-Z][a-zA-Z0-9_]{0,39}-[a-zA-Z0-9]{10}$"
	// Tags to apply to the harness endpoint resource.
	Tags?: [...#Tag]
	// The harness version that the endpoint points to and serves invocations from.
	TargetVersion?: string & =~"^([1-9][0-9]{0,4})$" & strings.MinRunes(1) & strings.MaxRunes(5)
}

#HarnessEndpointStatus: "CREATING" | "CREATE_FAILED" | "UPDATING" | "UPDATE_FAILED" | "READY" | "DELETING" | "DELETE_FAILED"

#Tag: {
	Key: string & =~"^[a-zA-Z0-9\\s_.:/=+\\-@]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[a-zA-Z0-9\\s_.:/=+\\-@]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
