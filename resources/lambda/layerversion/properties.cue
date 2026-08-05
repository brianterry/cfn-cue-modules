package layerversion

#Properties: {
	// A list of compatible instruction set architectures.
	CompatibleArchitectures?: [...string]
	// A list of compatible function runtimes. Used for filtering with ListLayers and ListLayerVersions.
	CompatibleRuntimes?: [...string]
	// The function layer archive.
	Content: #Content
	// The description of the version.
	Description?: string
	// The name or Amazon Resource Name (ARN) of the layer.
	LayerName?: string
	// The layer's software license.
	LicenseInfo?: string
}

#Content: {
	// The Amazon S3 bucket of the layer archive.
	S3Bucket: string
	// The Amazon S3 key of the layer archive.
	S3Key: string
	// Specifies whether Lambda should copy the deployment package to its internal storage (COPY) or reference it directly from your S3 bucket (REFERENCE).
	S3ObjectStorageMode?: "COPY" | "REFERENCE"
	// For versioned objects, the version of the layer archive object to use.
	S3ObjectVersion?: string
}
