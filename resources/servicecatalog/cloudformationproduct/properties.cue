package cloudformationproduct

#Properties: {
	// The language code.
	AcceptLanguage?: string
	// The description of the product.
	Description?: string
	// The distributor of the product.
	Distributor?: string
	// The name of the product.
	Name: string
	// The owner of the product.
	Owner: string
	// The type of product.
	ProductType?: "CLOUD_FORMATION_TEMPLATE" | "MARKETPLACE_AMI" | "MARKETPLACE_CAR" | "TERRAFORM_OPEN_SOURCE" | "TERRAFORM_CLOUD" | "EXTERNAL"
	// The configuration of the provisioning artifact (also known as a version).
	ProvisioningArtifactParameters?: [...#ProvisioningArtifactProperties]
	// This property is turned off by default. If turned off, you can update provisioning artifacts or product attributes (such as description, distributor, name, owner, and more) and the associated provisioning artifacts will retain the same unique identifier. Provisioning artifacts are matched within the CloudFormationProduct resource, and only those that have been updated will be changed. Provisioning artifacts are matched by a combinaton of provisioning artifact template URL and name.
	ReplaceProvisioningArtifacts?: bool
	// A top level ProductViewDetail response containing details about the product's connection. AWS Service Catalog returns this field for the CreateProduct, UpdateProduct, DescribeProductAsAdmin, and SearchProductAsAdmin APIs. This response contains the same fields as the ConnectionParameters request, with the addition of the LastSync response.
	SourceConnection?: #SourceConnection
	// The support information about the product.
	SupportDescription?: string
	// The contact email for product support.
	SupportEmail?: string
	// The contact URL for product support.
	SupportUrl?: string
	// One or more tags.
	Tags?: [...#Tag]
}

#CodeStarParameters: {
	// The absolute path where the artifact resides within the repo and branch, formatted as "folder/file.json".
	ArtifactPath: string
	// The specific branch where the artifact resides.
	Branch: string
	// The CodeStar ARN, which is the connection between AWS Service Catalog and the external repository.


	ConnectionArn: string
	// The specific repository where the product's artifact-to-be-synced resides, formatted as "Account/Repo."
	Repository: string
}

#ConnectionParameters: {
	// The connection details based on the connection Type.
	CodeStar?: #CodeStarParameters
}

#ProvisioningArtifactProperties: {
	// The description of the provisioning artifact, including how it differs from the previous provisioning artifact.
	Description?: string
	// If set to true, AWS Service Catalog stops validating the specified provisioning artifact even if it is invalid.
	DisableTemplateValidation?: bool
	// Specify the template source with one of the following options, but not both. Keys accepted: [ LoadTemplateFromURL, ImportFromPhysicalId ] The URL of the AWS CloudFormation template in Amazon S3 in JSON format. Specify the URL in JSON format as follows:

"LoadTemplateFromURL": "https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/..."

ImportFromPhysicalId: The physical id of the resource that contains the template. Currently only supports AWS CloudFormation stack arn. Specify the physical id in JSON format as follows: ImportFromPhysicalId: "arn:aws:cloudformation:[us-east-1]:[accountId]:stack/[StackName]/[resourceId]
	Info: {
		ImportFromPhysicalId?: string
		LoadTemplateFromURL?: string
	}
	// The name of the provisioning artifact (for example, v1 v2beta). No spaces are allowed.
	Name?: string
	// The type of provisioning artifact. Valid values are CLOUD_FORMATION_TEMPLATE, TERRAFORM_OPEN_SOURCE, TERRAFORM_CLOUD, EXTERNAL
	Type?: "CLOUD_FORMATION_TEMPLATE" | "MARKETPLACE_AMI" | "MARKETPLACE_CAR" | "TERRAFORM_OPEN_SOURCE" | "TERRAFORM_CLOUD" | "EXTERNAL"
}

#SourceConnection: {
	// The connection details based on the connection Type.
	ConnectionParameters: {
		CodeStar?: #CodeStarParameters
	}
	// The only supported SourceConnection type is Codestar.
	Type: string
}

#Tag: {
	// The tag key.
	Key: string
	// The tag value
	Value: string
}
