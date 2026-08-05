package index

#Properties: {
	// The endpoint for the collection.
	CollectionEndpoint: string
	// The name of the OpenSearch Serverless index.
	IndexName: string & =~"^(?![_-])[a-z][a-z0-9_-]*$"
	// Index Mappings
	Mappings?: {
		Properties?: {...}
	}
	// Index settings
	Settings?: #IndexSettings
}

#IndexSettings: {
	// Custom analysis configuration including analyzers, tokenizers, and filters
	Analysis?: {
		Analyzer?: {...}
	}
	Index?: {
		Knn?: bool
		KnnAlgoParamEfSearch?: int
		RefreshInterval?: string
	}
}

#PropertyMapping: {
	// The analyzer to use for this field (for text and keyword fields)
	Analyzer?: string
	// The compression level for knn_vector fields
	CompressionLevel?: "16x" | "32x" | "8x" | "4x" | "2x" | "1x"
	// The data type for knn_vector fields (e.g. float, byte). Controls how vector values are stored.
	DataType?: "float" | "byte"
	// Dimension size for vector fields, defines the number of dimensions in the vector
	Dimension?: int
	// Whether a field should be indexed
	Index?: bool
	// Configuration for k-NN search method
	Method?: {
		Engine?: "nmslib" | "faiss" | "lucene"
		Name: "hnsw" | "ivf"
		Parameters?: {
			EfConstruction?: int & >=1
			M?: int & >=2 & <=100
		}
		SpaceType?: "l2" | "l1" | "linf" | "cosinesimil" | "innerproduct" | "hamming"
	}
	// Nested fields within an object or nested field type
	Properties?: {...}
	// The distance function used for k-NN search (field-level, outside Method)
	SpaceType?: "l2" | "l1" | "linf" | "cosinesimil" | "innerproduct" | "hamming"
	// The field data type. Must be a valid OpenSearch field type.
	Type: "text" | "knn_vector" | "keyword" | "integer"
	// Default value for the field when not specified in a document
	Value?: string
}
