package livesource

#Properties: {
	// <p>A list of HTTP package configuration parameters for this live source.</p>
	HttpPackageConfigurations: [...#HttpPackageConfiguration]
	LiveSourceName: string
	SourceLocationName: string
	// The tags to assign to the live source.
	Tags?: [...#Tag]
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
