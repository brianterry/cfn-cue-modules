package step

#Properties: {
	// This specifies what action to take when the cluster step fails. Possible values are CANCEL_AND_WAIT and CONTINUE.
	ActionOnFailure: string
	// The KMS key ARN to encrypt the logs published to the given Amazon S3 destination. When omitted, EMR falls back to cluster-level logging behavior.
	EncryptionKeyArn?: string
	// The HadoopJarStepConfig property type specifies a job flow step consisting of a JAR file whose main function will be executed. The main function submits a job for the cluster to execute as a step on the master node, and then waits for the job to finish or fail before executing subsequent steps.
	HadoopJarStep: #HadoopJarStepConfig
	// A string that uniquely identifies the cluster (job flow).
	JobFlowId: string
	// The Amazon S3 destination URI for log publishing. When omitted, EMR falls back to cluster-level logging behavior.
	LogUri?: string
	// The name of the cluster step.
	Name: string
}

#HadoopJarStepConfig: {
	Args?: [...string]
	Jar: string
	MainClass?: string
	StepProperties?: [...#KeyValue]
}

#KeyValue: {
	Key?: string
	Value?: string
}
