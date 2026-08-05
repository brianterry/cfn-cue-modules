package insight

import "strings"

#Properties: {
	// One or more attributes used to filter the findings included in the insight
	Filters: #AwsSecurityFindingFilters
	// The grouping attribute for the insight's findings
	GroupByAttribute: #NonEmptyString
	// The name of a Security Hub insight
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#AwsSecurityFindingFilters: {
	// The AWS account ID in which a finding is generated.
	AwsAccountId?: [...#StringFilter]
	// The name of the AWS account in which a finding is generated.
	AwsAccountName?: [...#StringFilter]
	// The name of the findings provider (company) that owns the solution (product) that generates findings.
	CompanyName?: [...#StringFilter]
	// The unique identifier of a standard in which a control is enabled.
	ComplianceAssociatedStandardsId?: [...#StringFilter]
	// The unique identifier of a control across standards.
	ComplianceSecurityControlId?: [...#StringFilter]
	// The name of a security control parameter.
	ComplianceSecurityControlParametersName?: [...#StringFilter]
	// The current value of a security control parameter.
	ComplianceSecurityControlParametersValue?: [...#StringFilter]
	// Exclusive to findings that are generated as the result of a check run against a specific rule in a supported standard.
	ComplianceStatus?: [...#StringFilter]
	// A finding's confidence.
	Confidence?: [...#NumberFilter]
	// An ISO8601-formatted timestamp that indicates when the security findings provider captured the potential security issue that a finding captured.
	CreatedAt?: [...#DateFilter]
	// The level of importance assigned to the resources associated with the finding.
	Criticality?: [...#NumberFilter]
	// A finding's description.
	Description?: [...#StringFilter]
	// The finding provider value for the finding confidence.
	FindingProviderFieldsConfidence?: [...#NumberFilter]
	// The finding provider value for the level of importance assigned to the resources associated with the findings.
	FindingProviderFieldsCriticality?: [...#NumberFilter]
	// The finding identifier of a related finding that is identified by the finding provider.
	FindingProviderFieldsRelatedFindingsId?: [...#StringFilter]
	// The ARN of the solution that generated a related finding that is identified by the finding provider.
	FindingProviderFieldsRelatedFindingsProductArn?: [...#StringFilter]
	// The finding provider value for the severity label.
	FindingProviderFieldsSeverityLabel?: [...#StringFilter]
	// The finding provider's original value for the severity.
	FindingProviderFieldsSeverityOriginal?: [...#StringFilter]
	// One or more finding types that the finding provider assigned to the finding.
	FindingProviderFieldsTypes?: [...#StringFilter]
	// An ISO8601-formatted timestamp that indicates when the security findings provider first observed the potential security issue that a finding captured.
	FirstObservedAt?: [...#DateFilter]
	// The identifier for the solution-specific component (a discrete unit of logic) that generated a finding.
	GeneratorId?: [...#StringFilter]
	// The security findings provider-specific identifier for a finding.
	Id?: [...#StringFilter]
	// A keyword for a finding.
	Keyword?: [...#KeywordFilter]
	// An ISO8601-formatted timestamp that indicates when the security findings provider most recently observed the potential security issue that a finding captured.
	LastObservedAt?: [...#DateFilter]
	// The name of the malware that was observed.
	MalwareName?: [...#StringFilter]
	// The filesystem path of the malware that was observed.
	MalwarePath?: [...#StringFilter]
	// The state of the malware that was observed.
	MalwareState?: [...#StringFilter]
	// The type of the malware that was observed.
	MalwareType?: [...#StringFilter]
	// The destination domain of network-related information about a finding.
	NetworkDestinationDomain?: [...#StringFilter]
	// The destination IPv4 address of network-related information about a finding.
	NetworkDestinationIpV4?: [...#IpFilter]
	// The destination IPv6 address of network-related information about a finding.
	NetworkDestinationIpV6?: [...#IpFilter]
	// The destination port of network-related information about a finding.
	NetworkDestinationPort?: [...#NumberFilter]
	// Indicates the direction of network traffic associated with a finding.
	NetworkDirection?: [...#StringFilter]
	// The protocol of network-related information about a finding.
	NetworkProtocol?: [...#StringFilter]
	// The source domain of network-related information about a finding.
	NetworkSourceDomain?: [...#StringFilter]
	// The source IPv4 address of network-related information about a finding.
	NetworkSourceIpV4?: [...#IpFilter]
	// The source IPv6 address of network-related information about a finding.
	NetworkSourceIpV6?: [...#IpFilter]
	// The source media access control (MAC) address of network-related information about a finding.
	NetworkSourceMac?: [...#StringFilter]
	// The source port of network-related information about a finding.
	NetworkSourcePort?: [...#NumberFilter]
	// The text of a note.
	NoteText?: [...#StringFilter]
	// The timestamp of when the note was updated.
	NoteUpdatedAt?: [...#DateFilter]
	// The principal that created a note.
	NoteUpdatedBy?: [...#StringFilter]
	// A timestamp that identifies when the process was launched.
	ProcessLaunchedAt?: [...#DateFilter]
	// The name of the process.
	ProcessName?: [...#StringFilter]
	// The parent process ID.
	ProcessParentPid?: [...#NumberFilter]
	// The path to the process executable.
	ProcessPath?: [...#StringFilter]
	// The process ID.
	ProcessPid?: [...#NumberFilter]
	// A timestamp that identifies when the process was terminated.
	ProcessTerminatedAt?: [...#DateFilter]
	// The ARN generated by Security Hub that uniquely identifies a third-party company (security findings provider) after this provider's product (solution that generates findings) is registered with Security Hub.
	ProductArn?: [...#StringFilter]
	// A data type where security findings providers can include additional solution-specific details that aren't part of the defined AwsSecurityFinding format.
	ProductFields?: [...#MapFilter]
	// The name of the solution (product) that generates findings.
	ProductName?: [...#StringFilter]
	// The recommendation of what to do about the issue described in a finding.
	RecommendationText?: [...#StringFilter]
	// The updated record state for the finding.
	RecordState?: [...#StringFilter]
	// The Region from which the finding was generated.
	Region?: [...#StringFilter]
	// The solution-generated identifier for a related finding.
	RelatedFindingsId?: [...#StringFilter]
	// The ARN of the solution that generated a related finding.
	RelatedFindingsProductArn?: [...#StringFilter]
	// The ARN of the application that is related to a finding.
	ResourceApplicationArn?: [...#StringFilter]
	// The name of the application that is related to a finding.
	ResourceApplicationName?: [...#StringFilter]
	// The IAM profile ARN of the instance.
	ResourceAwsEc2InstanceIamInstanceProfileArn?: [...#StringFilter]
	// The Amazon Machine Image (AMI) ID of the instance.
	ResourceAwsEc2InstanceImageId?: [...#StringFilter]
	// The IPv4 addresses associated with the instance.
	ResourceAwsEc2InstanceIpV4Addresses?: [...#IpFilter]
	// The IPv6 addresses associated with the instance.
	ResourceAwsEc2InstanceIpV6Addresses?: [...#IpFilter]
	// The key name associated with the instance.
	ResourceAwsEc2InstanceKeyName?: [...#StringFilter]
	// The date and time the instance was launched.
	ResourceAwsEc2InstanceLaunchedAt?: [...#DateFilter]
	// The identifier of the subnet that the instance was launched in.
	ResourceAwsEc2InstanceSubnetId?: [...#StringFilter]
	// The instance type of the instance.
	ResourceAwsEc2InstanceType?: [...#StringFilter]
	// The identifier of the VPC that the instance was launched in.
	ResourceAwsEc2InstanceVpcId?: [...#StringFilter]
	// The creation date/time of the IAM access key related to a finding.
	ResourceAwsIamAccessKeyCreatedAt?: [...#DateFilter]
	// The name of the principal that is associated with an IAM access key.
	ResourceAwsIamAccessKeyPrincipalName?: [...#StringFilter]
	// The status of the IAM access key related to a finding.
	ResourceAwsIamAccessKeyStatus?: [...#StringFilter]
	// The user associated with the IAM access key related to a finding.
	ResourceAwsIamAccessKeyUserName?: [...#StringFilter]
	// The name of an IAM user.
	ResourceAwsIamUserUserName?: [...#StringFilter]
	// The canonical user ID of the owner of the S3 bucket.
	ResourceAwsS3BucketOwnerId?: [...#StringFilter]
	// The display name of the owner of the S3 bucket.
	ResourceAwsS3BucketOwnerName?: [...#StringFilter]
	// The identifier of the image related to a finding.
	ResourceContainerImageId?: [...#StringFilter]
	// The name of the image related to a finding.
	ResourceContainerImageName?: [...#StringFilter]
	// A timestamp that identifies when the container was started.
	ResourceContainerLaunchedAt?: [...#DateFilter]
	// The name of the container related to a finding.
	ResourceContainerName?: [...#StringFilter]
	// The details of a resource that doesn't have a specific subfield for the resource type defined.
	ResourceDetailsOther?: [...#MapFilter]
	// The canonical identifier for the given resource type.
	ResourceId?: [...#StringFilter]
	// The canonical AWS partition name that the Region is assigned to.
	ResourcePartition?: [...#StringFilter]
	// The canonical AWS external Region name where this resource is located.
	ResourceRegion?: [...#StringFilter]
	// A list of AWS tags associated with a resource at the time the finding was processed.
	ResourceTags?: [...#MapFilter]
	// Specifies the type of the resource that details are provided for.
	ResourceType?: [...#StringFilter]
	// Indicates whether or not sample findings are included in the filter results.
	Sample?: [...#BooleanFilter]
	// The label of a finding's severity.
	SeverityLabel?: [...#StringFilter]
	// The normalized severity of a finding.
	SeverityNormalized?: [...#NumberFilter]
	// The native severity as defined by the security findings provider's solution that generated the finding.
	SeverityProduct?: [...#NumberFilter]
	// A URL that links to a page about the current finding in the security findings provider's solution.
	SourceUrl?: [...#StringFilter]
	// The category of a threat intelligence indicator.
	ThreatIntelIndicatorCategory?: [...#StringFilter]
	// A timestamp that identifies the last observation of a threat intelligence indicator.
	ThreatIntelIndicatorLastObservedAt?: [...#DateFilter]
	// The source of the threat intelligence.
	ThreatIntelIndicatorSource?: [...#StringFilter]
	// The URL for more details from the source of the threat intelligence.
	ThreatIntelIndicatorSourceUrl?: [...#StringFilter]
	// The type of a threat intelligence indicator.
	ThreatIntelIndicatorType?: [...#StringFilter]
	// The value of a threat intelligence indicator.
	ThreatIntelIndicatorValue?: [...#StringFilter]
	// A finding's title.
	Title?: [...#StringFilter]
	// A finding type in the format of namespace/category/classifier that classifies a finding.
	Type?: [...#StringFilter]
	// An ISO8601-formatted timestamp that indicates when the security findings provider last updated the finding record.
	UpdatedAt?: [...#DateFilter]
	// A list of name/value string pairs associated with the finding.
	UserDefinedFields?: [...#MapFilter]
	// The veracity of a finding.
	VerificationState?: [...#StringFilter]
	// Indicates whether a software vulnerability in your environment has a known exploit.
	VulnerabilitiesExploitAvailable?: [...#StringFilter]
	// Indicates whether a vulnerability is fixed in a newer version of the affected software packages.
	VulnerabilitiesFixAvailable?: [...#StringFilter]
	// The workflow state of a finding.
	WorkflowState?: [...#StringFilter]
	// The status of the investigation into a finding.
	WorkflowStatus?: [...#StringFilter]
}

#BooleanFilter: {
	// The value of the boolean.
	Value: bool
}

#DateFilter: {
	DateRange?: #DateRange
	End?: #ISO8601DateString
	Start?: #ISO8601DateString
}

#DateRange: {
	// A date range unit for the date filter.
	Unit: "DAYS"
	// A date range value for the date filter.
	Value: number
}

#IpFilter: {
	// A finding's CIDR value.
	Cidr: #NonEmptyString
}

#KeywordFilter: {
	// A value for the keyword.
	Value: #NonEmptyString
}

#MapFilter: {
	// The condition to apply to the key value when filtering Security Hub findings with a map filter.
	Comparison: "EQUALS" | "NOT_EQUALS"
	Key: #NonEmptyString
	Value: #NonEmptyString
}

#NumberFilter: {
	// The equal-to condition to be applied to a single field when querying for findings.
	Eq?: number
	// The greater-than-equal condition to be applied to a single field when querying for findings.
	Gte?: number
	// The less-than-equal condition to be applied to a single field when querying for findings.
	Lte?: number
}

#StringFilter: {
	Comparison: #StringFilterComparison
	Value: #NonEmptyString
}
