package scraper

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Required to identify a specific scraper.
	ScraperId: string & =~"^s-[a-z0-9]{8}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{12}$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// Scraper ARN.
	Arn: string & =~"^arn:(aws|aws-us-gov|aws-cn):aps:[a-z0-9-]+:[0-9]+:scraper/s-[a-z0-9]{8}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{12}$"
	// IAM role ARN for the scraper.
	RoleArn: string & =~"^arn:(aws|aws-us-gov|aws-cn):iam::[0-9]{12}:role/[a-zA-Z0-9-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}
