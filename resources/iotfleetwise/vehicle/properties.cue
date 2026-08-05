package vehicle

import "strings"

#Properties: {
	AssociationBehavior?: #VehicleAssociationBehavior
	Attributes?: #attributesMap
	DecoderManifestArn: string
	ModelManifestArn: string
	Name: string & =~"^[a-zA-Z\\d\\-_:]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	StateTemplates?: [...#StateTemplateAssociation]
	Tags?: [...#Tag]
}

#OnChangeStateTemplateUpdateStrategy: {...}

#PeriodicStateTemplateUpdateStrategy: {
	StateTemplateUpdateRate: #TimePeriod
}

#StateTemplateAssociation: {
	Identifier: string & strings.MinRunes(1) & strings.MaxRunes(100)
	StateTemplateUpdateStrategy: #StateTemplateUpdateStrategy
}

#StateTemplateUpdateStrategy: {
	Periodic: #PeriodicStateTemplateUpdateStrategy
} | {
	OnChange: #OnChangeStateTemplateUpdateStrategy
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TimePeriod: {
	Unit: #TimeUnit
	Value: number & >=1
}

#TimeUnit: "MILLISECOND" | "SECOND" | "MINUTE" | "HOUR"

#VehicleAssociationBehavior: "CreateIotThing" | "ValidateIotThingExists"

#attributesMap: {...}
