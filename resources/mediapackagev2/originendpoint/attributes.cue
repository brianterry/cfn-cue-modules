package originendpoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// <p>The Amazon Resource Name (ARN) associated with the resource.</p>
	Arn: string
	// <p>The date and time the origin endpoint was created.</p>
	CreatedAt: string
	DashManifestUrls: [...string]
	MssManifestUrls: [...string]
	HlsManifestUrls: [...string]
	LowLatencyHlsManifestUrls: [...string]
	// <p>The date and time the origin endpoint was modified.</p>
	ModifiedAt: string
	// <p>A low-latency HLS manifest configuration.</p>
	LowLatencyHlsManifests: [...#LowLatencyHlsManifestConfiguration]
	// <p>An HTTP live streaming (HLS) manifest configuration.</p>
	HlsManifests: [...#HlsManifestConfiguration]
}
