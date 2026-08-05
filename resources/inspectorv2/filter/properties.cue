package filter

import "strings"

#Properties: {
	// Findings filter description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(512)
	// Findings filter action.
	FilterAction: #FilterAction
	// Findings filter criteria.
	FilterCriteria: #FilterCriteria
	// Findings filter name.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Tags?: #FilterTagMap
}

#DateFilter: {
	EndInclusive?: #Timestamp
	StartInclusive?: #Timestamp
}

#FilterCriteria: {
	AwsAccountId?: #StringFilterList
	CodeVulnerabilityDetectorName?: #StringFilterList
	CodeVulnerabilityDetectorTags?: #StringFilterList
	CodeVulnerabilityFilePath?: #StringFilterList
	ComponentId?: #StringFilterList
	ComponentType?: #StringFilterList
	Ec2InstanceImageId?: #StringFilterList
	Ec2InstanceSubnetId?: #StringFilterList
	Ec2InstanceVpcId?: #StringFilterList
	EcrImageArchitecture?: #StringFilterList
	EcrImageHash?: #StringFilterList
	EcrImagePushedAt?: #DateFilterList
	EcrImageRegistry?: #StringFilterList
	EcrImageRepositoryName?: #StringFilterList
	EcrImageTags?: #StringFilterList
	EpssScore?: #NumberFilterList
	ExploitAvailable?: #StringFilterList
	FindingArn?: #StringFilterList
	FindingStatus?: #StringFilterList
	FindingType?: #StringFilterList
	FirstObservedAt?: #DateFilterList
	FixAvailable?: #StringFilterList
	InspectorScore?: #NumberFilterList
	LambdaFunctionExecutionRoleArn?: #StringFilterList
	LambdaFunctionLastModifiedAt?: #DateFilterList
	LambdaFunctionLayers?: #StringFilterList
	LambdaFunctionName?: #StringFilterList
	LambdaFunctionRuntime?: #StringFilterList
	LastObservedAt?: #DateFilterList
	NetworkProtocol?: #StringFilterList
	PortRange?: #PortRangeFilterList
	RelatedVulnerabilities?: #StringFilterList
	ResourceId?: #StringFilterList
	ResourceTags?: #MapFilterList
	ResourceType?: #StringFilterList
	Severity?: #StringFilterList
	Title?: #StringFilterList
	UpdatedAt?: #DateFilterList
	VendorSeverity?: #StringFilterList
	VulnerabilityId?: #StringFilterList
	VulnerabilitySource?: #StringFilterList
	VulnerablePackages?: #PackageFilterList
}

#MapFilter: {
	Comparison: #MapComparison
	Key?: #MapKey
	Value?: #MapValue
}

#NumberFilter: {
	LowerInclusive?: number
	UpperInclusive?: number
}

#PackageFilter: {
	Architecture?: #StringFilter
	Epoch?: #NumberFilter
	FilePath?: #StringFilter
	Name?: #StringFilter
	Release?: #StringFilter
	SourceLambdaLayerArn?: #StringFilter
	SourceLayerHash?: #StringFilter
	Version?: #StringFilter
}

#PortRangeFilter: {
	BeginInclusive?: #Port
	EndInclusive?: #Port
}

#StringFilter: {
	Comparison: #StringComparison
	Value: #StringInput
}
