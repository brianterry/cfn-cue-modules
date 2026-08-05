package pipeline

import "strings"

#Properties: {
	PipelineActivities: [...#Activity]
	PipelineName?: string & =~"[a-zA-Z0-9_]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	Tags?: [...#Tag]
}

#Activity: {
	AddAttributes?: #AddAttributes
	Channel?: #Channel
	Datastore?: #Datastore
	DeviceRegistryEnrich?: #DeviceRegistryEnrich
	DeviceShadowEnrich?: #DeviceShadowEnrich
	Filter?: #Filter
	Lambda?: #Lambda
	Math?: #Math
	RemoveAttributes?: #RemoveAttributes
	SelectAttributes?: #SelectAttributes
}

#AddAttributes: {
	Attributes: {...}
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Next?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Channel: {
	ChannelName: string & =~"[a-zA-Z0-9_]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Next?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Datastore: {
	DatastoreName: string & =~"[a-zA-Z0-9_]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#DeviceRegistryEnrich: {
	Attribute: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Next?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	RoleArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	ThingName: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#DeviceShadowEnrich: {
	Attribute: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Next?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	RoleArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	ThingName: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#Filter: {
	Filter: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Next?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Lambda: {
	BatchSize: int & >=1 & <=1000
	LambdaName: string & =~"[a-zA-Z0-9_-]+" & strings.MinRunes(1) & strings.MaxRunes(64)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Next?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Math: {
	Attribute: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Math: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Next?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#RemoveAttributes: {
	Attributes: [...string & strings.MinRunes(1) & strings.MaxRunes(256)]
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Next?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#SelectAttributes: {
	Attributes: [...string & strings.MinRunes(1) & strings.MaxRunes(256)]
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Next?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
