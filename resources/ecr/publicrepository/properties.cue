package publicrepository

import "strings"

#Properties: {
	// The details about the repository that are publicly visible in the Amazon ECR Public Gallery. For more information, see [Amazon ECR Public repository catalog data](https://docs.aws.amazon.com/AmazonECR/latest/public/public-repository-catalog-data.html) in the *Amazon ECR Public User Guide*.
	RepositoryCatalogData?: {
		AboutText?: #AboutText
		Architectures?: #ArchitectureList
		OperatingSystems?: #OperatingSystemList
		RepositoryDescription?: #RepositoryDescription
		UsageText?: #UsageText
	}
	// The name to use for the public repository. The repository name may be specified on its own (such as ``nginx-web-app``) or it can be prepended with a namespace to group the repository into a category (such as ``project-a/nginx-web-app``). If you don't specify a name, CFNlong generates a unique physical ID and uses that ID for the repository name. For more information, see [Name Type](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html).
	// If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
	RepositoryName?: string & =~"^(?=.{2,256}$)((?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*)$" & strings.MinRunes(2) & strings.MaxRunes(256)
	// The JSON repository policy text to apply to the public repository. For more information, see [Amazon ECR Public repository policies](https://docs.aws.amazon.com/AmazonECR/latest/public/public-repository-policies.html) in the *Amazon ECR Public User Guide*.
	RepositoryPolicyText?: {...}
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// One part of a key-value pair that make up a tag. A ``key`` is a general label that acts like a category for more specific tag values.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// A ``value`` acts as a descriptor within a tag category (key).
	Value: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
