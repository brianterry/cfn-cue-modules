package loganomalydetector

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// ARN of LogAnomalyDetector
	AnomalyDetectorArn: string
	// When detector was created.
	CreationTimeStamp: number
	// When detector was lsat modified.
	LastModifiedTimeStamp: number
	// Current status of detector.
	AnomalyDetectorStatus: string
}
