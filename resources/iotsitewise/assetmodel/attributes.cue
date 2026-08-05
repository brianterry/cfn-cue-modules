package assetmodel

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the asset model, which has the following format.
	AssetModelArn: string
	// The ID of the asset model.
	AssetModelId: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	// The property definitions of the asset model. You can specify up to 200 properties per asset model.
	AssetModelProperties: [...#AssetModelProperty]
	// The hierarchy definitions of the asset model. Each hierarchy specifies an asset model whose assets can be children of any other assets created from this asset model. You can specify up to 10 hierarchies per asset model.
	AssetModelHierarchies: [...#AssetModelHierarchy]
	// The composite asset models that are part of this asset model. Composite asset models are asset models that contain specific properties.
	AssetModelCompositeModels: [...#AssetModelCompositeModel]
}
