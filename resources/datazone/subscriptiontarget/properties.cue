package subscriptiontarget

import "strings"

#Properties: {
	// The asset types that can be included in the subscription target.
	ApplicableAssetTypes: [...string & =~"^[^\\.]*" & strings.MinRunes(1) & strings.MaxRunes(256)]
	// The authorized principals of the subscription target.
	AuthorizedPrincipals: [...string & =~"^[a-zA-Z0-9:/_-]*$"]
	// The ID of the Amazon DataZone domain in which subscription target would be created.
	DomainIdentifier: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The ID of the environment in which subscription target would be created.
	EnvironmentIdentifier: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The manage access role that is used to create the subscription target.
	ManageAccessRole?: string
	// The name of the subscription target.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The provider of the subscription target.
	Provider?: string
	// The configuration of the subscription target.
	SubscriptionTargetConfig: [...#SubscriptionTargetForm]
	// The type of the subscription target.
	Type: string
}

#SubscriptionTargetForm: {
	// The content of the subscription target configuration.
	Content: string
	// The form name included in the subscription target configuration.
	FormName: string & =~"^(?![0-9_])\\w+$|^_\\w*[a-zA-Z0-9]\\w*$" & strings.MinRunes(1) & strings.MaxRunes(128)
}
