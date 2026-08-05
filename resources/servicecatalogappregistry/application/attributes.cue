package application

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Id: string & =~"[a-z0-9]{26}"
	Arn: string & =~"arn:aws[-a-z]*:servicecatalog:[a-z]{2}(-gov)?-[a-z]+-\\d:\\d{12}:/applications/[a-z0-9]+"
	// The name of the application.
	ApplicationName: string & =~"\\w+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The key of the AWS application tag, which is awsApplication. Applications created before 11/13/2023 or applications without the AWS application tag resource group return no value.
	ApplicationTagKey: string & =~"\\w+" & strings.MaxRunes(128)
	// The value of the AWS application tag, which is the identifier of an associated resource. Applications created before 11/13/2023 or applications without the AWS application tag resource group return no value.
	ApplicationTagValue: string & =~"[a-zA-Z0-9_\\-:/]+" & strings.MaxRunes(256)
}
