package scraper

import "strings"

#Properties: {
	// Scraper alias.
	Alias?: string & =~"^[0-9A-Za-z][-.0-9A-Z_a-z]*$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Destination: #Destination
	RoleConfiguration?: #RoleConfiguration
	ScrapeConfiguration: #ScrapeConfiguration
	ScraperLoggingConfiguration?: #ScraperLoggingConfiguration
	Source: #Source
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#CloudWatchLogDestination: {
	// ARN of the CloudWatch log group
	LogGroupArn?: string & strings.MinRunes(0) & strings.MaxRunes(512)
}

#ComponentConfig: {
	Options?: {...}
}

#Destination: {
	// Configuration for Amazon Managed Prometheus metrics destination
	AmpConfiguration?: {
		WorkspaceArn: string & =~"^arn:aws[-a-z]*:aps:[-a-z0-9]+:[0-9]{12}:workspace/.+$"
	}
	// Configuration for CloudWatch metrics destination
	CloudWatchConfiguration?: {
		DatasetArn: string & =~"^arn:aws[-a-z]*:cloudwatch:[-a-z0-9]+:[0-9]{12}:dataset\\/.+$"
	}
}

#RoleConfiguration: {
	// IAM Role in source account
	SourceRoleArn?: string
	// IAM Role in the target account
	TargetRoleArn?: string
}

#ScrapeConfiguration: {
	// Prometheus compatible scrape configuration in base64 encoded blob format
	ConfigurationBlob?: string
}

#ScraperComponent: {
	Config?: #ComponentConfig
	Type: #ScraperComponentType
}

#ScraperComponentType: "SERVICE_DISCOVERY" | "COLLECTOR" | "EXPORTER"

#ScraperLoggingConfiguration: {
	LoggingDestination: #ScraperLoggingDestination
	ScraperComponents: [...#ScraperComponent]
}

#ScraperLoggingDestination: {
	CloudWatchLogs?: #CloudWatchLogDestination
}

#SecurityGroupId: string & =~"^sg-[0-9a-z]+$"

#Source: {
	// Configuration for EKS metrics source
	EksConfiguration?: {
		ClusterArn: string & =~"^arn:aws[-a-z]*:eks:[-a-z0-9]+:[0-9]{12}:cluster/.+$"
		SecurityGroupIds?: [...#SecurityGroupId]
		SubnetIds: [...#SubnetId]
	}
	// Configuration for VPC metrics source
	VpcConfiguration?: {
		SecurityGroupIds: [...#SecurityGroupId]
		SubnetIds: [...#SubnetId]
	}
}

#SubnetId: string & =~"^subnet-[0-9a-z]+$"

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
