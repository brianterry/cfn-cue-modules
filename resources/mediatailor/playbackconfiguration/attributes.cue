package playbackconfiguration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The URL that the player uses to initialize a session that uses client-side reporting.
	SessionInitializationEndpointPrefix: string
	// The configuration for HLS content.
	HlsConfiguration: #HlsConfiguration
	// The configuration for DASH content.
	DashConfiguration: #DashConfiguration
	// The Amazon Resource Name (ARN) for the playback configuration.
	PlaybackConfigurationArn: string
	// The URL that the player accesses to get a manifest from MediaTailor. This session will use server-side reporting.
	PlaybackEndpointPrefix: string
}
