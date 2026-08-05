package datasource

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier of a connection used to fetch relevant parameters from connection during Datasource run
	ConnectionId: string
	// The timestamp of when the data source was created.
	CreatedAt: string
	// The ID of the Amazon DataZone domain where the data source is created.
	DomainId: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The unique identifier of the Amazon DataZone environment to which the data source publishes assets.
	EnvironmentId: string
	// The unique identifier of the data source.
	Id: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The number of assets created by the data source during its last run.
	LastRunAssetCount: number
	// The timestamp that specifies when the data source was last run.
	LastRunAt: string
	// The status of the last run of this data source.
	LastRunStatus: string
	// The ID of the Amazon DataZone project to which the data source is added.
	ProjectId: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The status of the data source.
	Status: #DataSourceStatus
	// The timestamp of when this data source was updated.
	UpdatedAt: string
}
