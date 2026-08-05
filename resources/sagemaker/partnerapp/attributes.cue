package partnerapp

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the created PartnerApp.
	Arn: string & =~"arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:partner-app/app-[A-Z0-9]{12}$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The AppServerUrl based on app and account-info.
	BaseUrl: string & strings.MaxRunes(2048)
	// The end-of-life date for the current version of the PartnerApp.
	CurrentVersionEolDate: string
}
