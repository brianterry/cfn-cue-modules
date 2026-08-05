package vodsource

#Properties: {
	// <p>A list of HTTP package configuration parameters for this VOD source.</p>
	HttpPackageConfigurations: [...#HttpPackageConfiguration]
	SourceLocationName: string
	// The tags to assign to the VOD source.
	Tags?: [...#Tag]
	VodSourceName: string
}

#HttpPackageConfiguration: {
	// <p>The relative path to the URL for this VOD source. This is combined with <code>SourceLocation::HttpConfiguration::BaseUrl</code> to form a valid URL.</p>
	Path: string
	// <p>The name of the source group. This has to match one of the <code>Channel::Outputs::SourceGroup</code>.</p>
	SourceGroup: string
	Type: #Type
}

#Tag: {
	Key: string
	Value: string
}

#Type: "DASH" | "HLS"
