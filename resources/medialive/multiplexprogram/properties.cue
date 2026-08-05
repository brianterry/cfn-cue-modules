package multiplexprogram

import "strings"

#Properties: {
	// The ID of the multiplex that the program belongs to.
	MultiplexId?: string
	// The settings for this multiplex program.
	MultiplexProgramSettings?: #MultiplexProgramSettings
	// The packet identifier map for this multiplex program.
	PacketIdentifiersMap?: #MultiplexProgramPacketIdentifiersMap
	// Contains information about the current sources for the specified program in the specified multiplex. Keep in mind that each multiplex pipeline connects to both pipelines in a given source channel (the channel identified by the program). But only one of those channel pipelines is ever active at one time.
	PipelineDetails?: [...#MultiplexProgramPipelineDetail]
	// The settings for this multiplex program.
	PreferredChannelPipeline?: #PreferredChannelPipeline
	// The name of the multiplex program.
	ProgramName?: string
}

#MultiplexProgramPacketIdentifiersMap: {
	AudioPids?: [...int]
	DvbSubPids?: [...int]
	DvbTeletextPid?: int
	EtvPlatformPid?: int
	EtvSignalPid?: int
	KlvDataPids?: [...int]
	PcrPid?: int
	PmtPid?: int
	PrivateMetadataPid?: int
	Scte27Pids?: [...int]
	Scte35Pid?: int
	TimedMetadataPid?: int
	VideoPid?: int
}

#MultiplexProgramPipelineDetail: {
	// Identifies the channel pipeline that is currently active for the pipeline (identified by PipelineId) in the multiplex.
	ActiveChannelPipeline?: string
	// Identifies a specific pipeline in the multiplex.
	PipelineId?: string
}

#MultiplexProgramServiceDescriptor: {
	// Name of the provider.
	ProviderName: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// Name of the service.
	ServiceName: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#MultiplexProgramSettings: {
	PreferredChannelPipeline?: #PreferredChannelPipeline
	// Unique program number.
	ProgramNumber: int & >=0 & <=65535
	// Transport stream service descriptor configuration for the Multiplex program.
	ServiceDescriptor?: #MultiplexProgramServiceDescriptor
	// Program video settings configuration.
	VideoSettings?: #MultiplexVideoSettings
}

#MultiplexStatmuxVideoSettings: {
	// Maximum statmux bitrate.
	MaximumBitrate?: int & >=100000 & <=100000000
	// Minimum statmux bitrate.
	MinimumBitrate?: int & >=100000 & <=100000000
	// The purpose of the priority is to use a combination of the\nmultiplex rate control algorithm and the QVBR capability of the\nencoder to prioritize the video quality of some channels in a\nmultiplex over others.  Channels that have a higher priority will\nget higher video quality at the expense of the video quality of\nother channels in the multiplex with lower priority.
	Priority?: int & >=-5 & <=5
}
