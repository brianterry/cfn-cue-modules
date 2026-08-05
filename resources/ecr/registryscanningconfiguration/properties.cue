package registryscanningconfiguration

#Properties: {
	// The scanning rules associated with the registry.
	Rules: #ScanningRules
	// The type of scanning configured for the registry.
	ScanType: #ScanType
}

#Filter: string & =~"^[a-z0-9*](?:[._\\-/a-z0-9*]?[a-z0-9*]+)*$"

#FilterType: "WILDCARD"

#RegistryId: string & =~"^[0-9]{12}$"

#RepositoryFilter: {
	// The filter to use when scanning.
	Filter: #Filter
	// The type associated with the filter.
	FilterType: #FilterType
}

#ScanFrequency: "SCAN_ON_PUSH" | "CONTINUOUS_SCAN"

#ScanType: "BASIC" | "ENHANCED"

#ScanningRule: {
	// The details of a scanning repository filter. For more information on how to use filters, see [Using filters](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html#image-scanning-filters) in the *Amazon Elastic Container Registry User Guide*.
	RepositoryFilters: [...#RepositoryFilter]
	// The frequency that scans are performed at for a private registry. When the ``ENHANCED`` scan type is specified, the supported scan frequencies are ``CONTINUOUS_SCAN`` and ``SCAN_ON_PUSH``. When the ``BASIC`` scan type is specified, the ``SCAN_ON_PUSH`` scan frequency is supported. If scan on push is not specified, then the ``MANUAL`` scan frequency is set by default.
	ScanFrequency: #ScanFrequency
}

#ScanningRules: [...#ScanningRule]
