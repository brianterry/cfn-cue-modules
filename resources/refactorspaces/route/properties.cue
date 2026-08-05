package route

import "strings"

#Properties: {
	ApplicationIdentifier: string & =~"^app-([0-9A-Za-z]{10}$)" & strings.MinRunes(14) & strings.MaxRunes(14)
	DefaultRoute?: #DefaultRouteInput
	EnvironmentIdentifier: string & =~"^env-([0-9A-Za-z]{10}$)" & strings.MinRunes(14) & strings.MaxRunes(14)
	RouteType: #RouteType
	ServiceIdentifier: string & =~"^svc-([0-9A-Za-z]{10}$)" & strings.MinRunes(14) & strings.MaxRunes(14)
	// Metadata that you can assign to help organize the frameworks that you create. Each tag is a key-value pair.
	Tags?: [...#Tag]
	UriPathRoute?: #UriPathRouteInput
}

#DefaultRouteInput: {
	ActivationState: #RouteActivationState
}

#Tag: {
	// A string used to identify this tag
	Key: string & =~"^(?!aws:).+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for the tag
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#UriPathRouteInput: {
	ActivationState: #RouteActivationState
	AppendSourcePath?: bool
	IncludeChildPaths?: bool
	Methods?: [...#Method]
	SourcePath?: string & =~"^(/([a-zA-Z0-9._:-]+|\\{[a-zA-Z0-9._:-]+\\}))+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}
