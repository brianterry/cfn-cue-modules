package application

import "strings"

#Properties: {
	// The application configuration. Cannot be used when IsService is true.
	ApplicationConfig?: #ApplicationConfig
	// Application source config
	ApplicationSourceConfig: {
		ExternalUrlConfig: #ExternalUrlConfig
	}
	// The type of application
	ApplicationType?: "STANDARD" | "SERVICE" | "MCP_SERVER"
	// The application description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	// The iframe configuration
	IframeConfig?: #IframeConfig
	// The initialization timeout in milliseconds. Required when IsService is true.
	InitializationTimeout?: int
	// Indicates if the application is a service
	IsService?: bool
	// The name of the application.
	Name: string & =~"^[a-zA-Z0-9\\/\\._ \\-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The namespace of the application.
	Namespace: string & =~"^[a-zA-Z0-9/\\._\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The configuration of events or requests that the application has access to.
	Permissions?: [...#Permissions]
	// The tags (keys and values) associated with the application.
	Tags?: [...#Tag]
}

#ApplicationConfig: {
	ContactHandling?: #ContactHandling
}

#ContactHandling: {
	Scope: "CROSS_CONTACTS" | "PER_CONTACT"
}

#ExternalUrlConfig: {
	AccessUrl: string & =~"^\\w+\\:\\/\\/.*$" & strings.MinRunes(1) & strings.MaxRunes(1000)
	ApprovedOrigins?: [...#ApprovedOrigins]
}

#IframeConfig: {
	Allow?: [...string]
	Sandbox?: [...string]
}

#Tag: {
	// A key to identify the tag.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Corresponding tag value for the key.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
