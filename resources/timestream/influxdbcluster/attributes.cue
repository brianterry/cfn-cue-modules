package influxdbcluster

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Status of the InfluxDB cluster.
	Status: "CREATING" | "UPDATING" | "UPDATING_INSTANCE_TYPE" | "MAINTENANCE" | "DELETING" | "AVAILABLE" | "REBOOTING" | "REBOOT_FAILED" | "PARTIALLY_AVAILABLE" | "FAILED" | "DELETED"
	// The Amazon Resource Name (ARN) that is associated with the InfluxDB cluster.
	Arn: string & =~"^arn:aws[a-z\\-]*:timestream\\-influxdb:[a-z0-9\\-]+:[0-9]{12}:(db\\-instance|db\\-cluster|db\\-parameter\\-group)/[a-zA-Z0-9]{3,64}$" & strings.MinRunes(1) & strings.MaxRunes(1011)
	// The service generated unique identifier for InfluxDB cluster.
	Id: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(3) & strings.MaxRunes(64)
	// The connection endpoint for the InfluxDB cluster.
	Endpoint: string
	// The reader endpoint for the InfluxDB cluster.
	ReaderEndpoint: string
	// The Auth parameters secret Amazon Resource name (ARN) that is associated with the InfluxDB cluster.
	InfluxAuthParametersSecretArn: string & =~"^arn:[a-z]*:secretsmanager:[a-z\\-0-9]*:[0-9]*:secret:[a-zA-Z0-9\\-]*"
	// The engine type for the InfluxDB cluster.
	EngineType: "INFLUXDB_V2" | "INFLUXDB_V3_CORE" | "INFLUXDB_V3_ENTERPRISE"
}
