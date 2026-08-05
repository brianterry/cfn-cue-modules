package asset

import "strings"

#Properties: {
	// A description for the asset
	AssetDescription?: string
	// The External ID of the asset
	AssetExternalId?: string & =~"[a-zA-Z0-9_][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9_]+" & strings.MinRunes(2) & strings.MaxRunes(128)
	// The ID of the asset model from which to create the asset.
	AssetModelId: string
	// A unique, friendly name for the asset.
	AssetName: string
	// A list of key-value pairs that contain metadata for the asset.
	Tags?: [...#Tag]
}

#AssetHierarchy: {
	// The ID of the child asset to be associated.
	ChildAssetId: string
	// String-friendly customer provided external ID
	ExternalId?: string & =~"[a-zA-Z0-9_][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9_]+" & strings.MinRunes(2) & strings.MaxRunes(128)
	// Customer provided actual UUID for property
	Id?: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	// The LogicalID of a hierarchy in the parent asset's model.
	LogicalId?: string & =~"[^\\u0000-\\u001F\\u007F]+" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#AssetProperty: {
	// The property alias that identifies the property.
	Alias?: string
	// String-friendly customer provided external ID
	ExternalId?: string & =~"[a-zA-Z0-9_][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9_]+" & strings.MinRunes(2) & strings.MaxRunes(128)
	// Customer provided actual UUID for property
	Id?: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	// Customer provided ID for property.
	LogicalId?: string & =~"[^\\u0000-\\u001F\\u007F]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The MQTT notification state (ENABLED or DISABLED) for this asset property.
	NotificationState?: "ENABLED" | "DISABLED"
	// The unit of measure (such as Newtons or RPM) of the asset property. If you don't specify a value for this parameter, the service uses the value of the assetModelProperty in the asset model.
	Unit?: string
}

#Tag: {
	Key: string
	Value: string
}
