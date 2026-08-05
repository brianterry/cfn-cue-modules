package modelcard

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the successfully created model card.
	ModelCardArn: string & =~"^arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]{9,16}:[0-9]{12}:model-card/[a-zA-Z0-9](-*[a-zA-Z0-9]){0,62}$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// A version of the model card.
	ModelCardVersion: int & >=1
	// Information about the user who created or modified an experiment, trial, trial component, lineage group, project, or model card.
	CreatedBy: #UserContext
	// Information about the user who created or modified an experiment, trial, trial component, lineage group, project, or model card.
	LastModifiedBy: #UserContext
	// The date and time the model card was created.
	CreationTime: string
	// The date and time the model card was last modified.
	LastModifiedTime: string
	// The processing status of model card deletion. The ModelCardProcessingStatus updates throughout the different deletion steps.
	ModelCardProcessingStatus: "UnsetValue" | "DeleteInProgress" | "DeletePending" | "ContentDeleted" | "ExportJobsDeleted" | "DeleteCompleted" | "DeleteFailed"
}
