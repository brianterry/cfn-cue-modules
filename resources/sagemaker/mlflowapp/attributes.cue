package mlflowapp

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the MLflow App.
	Arn: string & =~"arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:mlflow-app/.*" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The server-generated identifier of the MLflow App.
	MlflowAppId: string
	// The status of the MLflow App.
	Status: "Creating" | "Created" | "CreateFailed" | "Updating" | "Updated" | "UpdateFailed" | "Deleting" | "DeleteFailed" | "Deleted"
	// The MLflow version used by the MLflow App.
	MlflowVersion: string & =~"[0-9]*.[0-9]*.[0-9]*" & strings.MinRunes(0) & strings.MaxRunes(16)
	// The date and time that the MLflow App was created.
	CreationTime: string
	// The date and time that the MLflow App was last modified.
	LastModifiedTime: string
}
