package service

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the AppRunner Service.
	ServiceArn: string & =~"arn:aws(-[\\w]+)*:[a-z0-9-\\\\.]{0,63}:[a-z0-9-\\\\.]{0,63}:[0-9]{12}:(\\w|\\/|-){1,1011}" & strings.MinRunes(1) & strings.MaxRunes(1011)
	// The AppRunner Service Id
	ServiceId: string & strings.MinRunes(32) & strings.MaxRunes(32)
	// The Service Url of the AppRunner Service.
	ServiceUrl: string
	// AppRunner Service status.
	Status: string
}
