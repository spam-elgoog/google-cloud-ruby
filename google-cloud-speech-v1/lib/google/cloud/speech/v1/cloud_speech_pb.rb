# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/speech/v1/cloud_speech.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/cloud/speech/v1/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
require 'google/rpc/status_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/speech/v1/cloud_speech.proto", :syntax => :proto3) do
    add_message "google.cloud.speech.v1.RecognizeRequest" do
      optional :config, :message, 1, "google.cloud.speech.v1.RecognitionConfig"
      optional :audio, :message, 2, "google.cloud.speech.v1.RecognitionAudio"
    end
    add_message "google.cloud.speech.v1.LongRunningRecognizeRequest" do
      optional :config, :message, 1, "google.cloud.speech.v1.RecognitionConfig"
      optional :audio, :message, 2, "google.cloud.speech.v1.RecognitionAudio"
      optional :output_config, :message, 4, "google.cloud.speech.v1.TranscriptOutputConfig"
    end
    add_message "google.cloud.speech.v1.TranscriptOutputConfig" do
      oneof :output_type do
        optional :gcs_uri, :string, 1
      end
    end
    add_message "google.cloud.speech.v1.StreamingRecognizeRequest" do
      oneof :streaming_request do
        optional :streaming_config, :message, 1, "google.cloud.speech.v1.StreamingRecognitionConfig"
        optional :audio_content, :bytes, 2
      end
    end
    add_message "google.cloud.speech.v1.StreamingRecognitionConfig" do
      optional :config, :message, 1, "google.cloud.speech.v1.RecognitionConfig"
      optional :single_utterance, :bool, 2
      optional :interim_results, :bool, 3
      optional :enable_voice_activity_events, :bool, 5
      optional :voice_activity_timeout, :message, 6, "google.cloud.speech.v1.StreamingRecognitionConfig.VoiceActivityTimeout"
    end
    add_message "google.cloud.speech.v1.StreamingRecognitionConfig.VoiceActivityTimeout" do
      optional :speech_start_timeout, :message, 1, "google.protobuf.Duration"
      optional :speech_end_timeout, :message, 2, "google.protobuf.Duration"
    end
    add_message "google.cloud.speech.v1.RecognitionConfig" do
      optional :encoding, :enum, 1, "google.cloud.speech.v1.RecognitionConfig.AudioEncoding"
      optional :sample_rate_hertz, :int32, 2
      optional :audio_channel_count, :int32, 7
      optional :enable_separate_recognition_per_channel, :bool, 12
      optional :language_code, :string, 3
      repeated :alternative_language_codes, :string, 18
      optional :max_alternatives, :int32, 4
      optional :profanity_filter, :bool, 5
      optional :adaptation, :message, 20, "google.cloud.speech.v1.SpeechAdaptation"
      repeated :speech_contexts, :message, 6, "google.cloud.speech.v1.SpeechContext"
      optional :enable_word_time_offsets, :bool, 8
      optional :enable_word_confidence, :bool, 15
      optional :enable_automatic_punctuation, :bool, 11
      optional :enable_spoken_punctuation, :message, 22, "google.protobuf.BoolValue"
      optional :enable_spoken_emojis, :message, 23, "google.protobuf.BoolValue"
      optional :diarization_config, :message, 19, "google.cloud.speech.v1.SpeakerDiarizationConfig"
      optional :metadata, :message, 9, "google.cloud.speech.v1.RecognitionMetadata"
      optional :model, :string, 13
      optional :use_enhanced, :bool, 14
    end
    add_enum "google.cloud.speech.v1.RecognitionConfig.AudioEncoding" do
      value :ENCODING_UNSPECIFIED, 0
      value :LINEAR16, 1
      value :FLAC, 2
      value :MULAW, 3
      value :AMR, 4
      value :AMR_WB, 5
      value :OGG_OPUS, 6
      value :SPEEX_WITH_HEADER_BYTE, 7
      value :WEBM_OPUS, 9
    end
    add_message "google.cloud.speech.v1.SpeakerDiarizationConfig" do
      optional :enable_speaker_diarization, :bool, 1
      optional :min_speaker_count, :int32, 2
      optional :max_speaker_count, :int32, 3
      optional :speaker_tag, :int32, 5
    end
    add_message "google.cloud.speech.v1.RecognitionMetadata" do
      optional :interaction_type, :enum, 1, "google.cloud.speech.v1.RecognitionMetadata.InteractionType"
      optional :industry_naics_code_of_audio, :uint32, 3
      optional :microphone_distance, :enum, 4, "google.cloud.speech.v1.RecognitionMetadata.MicrophoneDistance"
      optional :original_media_type, :enum, 5, "google.cloud.speech.v1.RecognitionMetadata.OriginalMediaType"
      optional :recording_device_type, :enum, 6, "google.cloud.speech.v1.RecognitionMetadata.RecordingDeviceType"
      optional :recording_device_name, :string, 7
      optional :original_mime_type, :string, 8
      optional :audio_topic, :string, 10
    end
    add_enum "google.cloud.speech.v1.RecognitionMetadata.InteractionType" do
      value :INTERACTION_TYPE_UNSPECIFIED, 0
      value :DISCUSSION, 1
      value :PRESENTATION, 2
      value :PHONE_CALL, 3
      value :VOICEMAIL, 4
      value :PROFESSIONALLY_PRODUCED, 5
      value :VOICE_SEARCH, 6
      value :VOICE_COMMAND, 7
      value :DICTATION, 8
    end
    add_enum "google.cloud.speech.v1.RecognitionMetadata.MicrophoneDistance" do
      value :MICROPHONE_DISTANCE_UNSPECIFIED, 0
      value :NEARFIELD, 1
      value :MIDFIELD, 2
      value :FARFIELD, 3
    end
    add_enum "google.cloud.speech.v1.RecognitionMetadata.OriginalMediaType" do
      value :ORIGINAL_MEDIA_TYPE_UNSPECIFIED, 0
      value :AUDIO, 1
      value :VIDEO, 2
    end
    add_enum "google.cloud.speech.v1.RecognitionMetadata.RecordingDeviceType" do
      value :RECORDING_DEVICE_TYPE_UNSPECIFIED, 0
      value :SMARTPHONE, 1
      value :PC, 2
      value :PHONE_LINE, 3
      value :VEHICLE, 4
      value :OTHER_OUTDOOR_DEVICE, 5
      value :OTHER_INDOOR_DEVICE, 6
    end
    add_message "google.cloud.speech.v1.SpeechContext" do
      repeated :phrases, :string, 1
      optional :boost, :float, 4
    end
    add_message "google.cloud.speech.v1.RecognitionAudio" do
      oneof :audio_source do
        optional :content, :bytes, 1
        optional :uri, :string, 2
      end
    end
    add_message "google.cloud.speech.v1.RecognizeResponse" do
      repeated :results, :message, 2, "google.cloud.speech.v1.SpeechRecognitionResult"
      optional :total_billed_time, :message, 3, "google.protobuf.Duration"
      optional :speech_adaptation_info, :message, 7, "google.cloud.speech.v1.SpeechAdaptationInfo"
      optional :request_id, :int64, 8
    end
    add_message "google.cloud.speech.v1.LongRunningRecognizeResponse" do
      repeated :results, :message, 2, "google.cloud.speech.v1.SpeechRecognitionResult"
      optional :total_billed_time, :message, 3, "google.protobuf.Duration"
      optional :output_config, :message, 6, "google.cloud.speech.v1.TranscriptOutputConfig"
      optional :output_error, :message, 7, "google.rpc.Status"
      optional :speech_adaptation_info, :message, 8, "google.cloud.speech.v1.SpeechAdaptationInfo"
      optional :request_id, :int64, 9
    end
    add_message "google.cloud.speech.v1.LongRunningRecognizeMetadata" do
      optional :progress_percent, :int32, 1
      optional :start_time, :message, 2, "google.protobuf.Timestamp"
      optional :last_update_time, :message, 3, "google.protobuf.Timestamp"
      optional :uri, :string, 4
    end
    add_message "google.cloud.speech.v1.StreamingRecognizeResponse" do
      optional :error, :message, 1, "google.rpc.Status"
      repeated :results, :message, 2, "google.cloud.speech.v1.StreamingRecognitionResult"
      optional :speech_event_type, :enum, 4, "google.cloud.speech.v1.StreamingRecognizeResponse.SpeechEventType"
      optional :speech_event_time, :message, 8, "google.protobuf.Duration"
      optional :total_billed_time, :message, 5, "google.protobuf.Duration"
      optional :speech_adaptation_info, :message, 9, "google.cloud.speech.v1.SpeechAdaptationInfo"
      optional :request_id, :int64, 10
    end
    add_enum "google.cloud.speech.v1.StreamingRecognizeResponse.SpeechEventType" do
      value :SPEECH_EVENT_UNSPECIFIED, 0
      value :END_OF_SINGLE_UTTERANCE, 1
      value :SPEECH_ACTIVITY_BEGIN, 2
      value :SPEECH_ACTIVITY_END, 3
      value :SPEECH_ACTIVITY_TIMEOUT, 4
    end
    add_message "google.cloud.speech.v1.StreamingRecognitionResult" do
      repeated :alternatives, :message, 1, "google.cloud.speech.v1.SpeechRecognitionAlternative"
      optional :is_final, :bool, 2
      optional :stability, :float, 3
      optional :result_end_time, :message, 4, "google.protobuf.Duration"
      optional :channel_tag, :int32, 5
      optional :language_code, :string, 6
    end
    add_message "google.cloud.speech.v1.SpeechRecognitionResult" do
      repeated :alternatives, :message, 1, "google.cloud.speech.v1.SpeechRecognitionAlternative"
      optional :channel_tag, :int32, 2
      optional :result_end_time, :message, 4, "google.protobuf.Duration"
      optional :language_code, :string, 5
    end
    add_message "google.cloud.speech.v1.SpeechRecognitionAlternative" do
      optional :transcript, :string, 1
      optional :confidence, :float, 2
      repeated :words, :message, 3, "google.cloud.speech.v1.WordInfo"
    end
    add_message "google.cloud.speech.v1.WordInfo" do
      optional :start_time, :message, 1, "google.protobuf.Duration"
      optional :end_time, :message, 2, "google.protobuf.Duration"
      optional :word, :string, 3
      optional :confidence, :float, 4
      optional :speaker_tag, :int32, 5
    end
    add_message "google.cloud.speech.v1.SpeechAdaptationInfo" do
      optional :adaptation_timeout, :bool, 1
      optional :timeout_message, :string, 4
    end
  end
end

module Google
  module Cloud
    module Speech
      module V1
        RecognizeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.RecognizeRequest").msgclass
        LongRunningRecognizeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.LongRunningRecognizeRequest").msgclass
        TranscriptOutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.TranscriptOutputConfig").msgclass
        StreamingRecognizeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.StreamingRecognizeRequest").msgclass
        StreamingRecognitionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.StreamingRecognitionConfig").msgclass
        StreamingRecognitionConfig::VoiceActivityTimeout = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.StreamingRecognitionConfig.VoiceActivityTimeout").msgclass
        RecognitionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.RecognitionConfig").msgclass
        RecognitionConfig::AudioEncoding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.RecognitionConfig.AudioEncoding").enummodule
        SpeakerDiarizationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.SpeakerDiarizationConfig").msgclass
        RecognitionMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.RecognitionMetadata").msgclass
        RecognitionMetadata::InteractionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.RecognitionMetadata.InteractionType").enummodule
        RecognitionMetadata::MicrophoneDistance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.RecognitionMetadata.MicrophoneDistance").enummodule
        RecognitionMetadata::OriginalMediaType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.RecognitionMetadata.OriginalMediaType").enummodule
        RecognitionMetadata::RecordingDeviceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.RecognitionMetadata.RecordingDeviceType").enummodule
        SpeechContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.SpeechContext").msgclass
        RecognitionAudio = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.RecognitionAudio").msgclass
        RecognizeResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.RecognizeResponse").msgclass
        LongRunningRecognizeResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.LongRunningRecognizeResponse").msgclass
        LongRunningRecognizeMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.LongRunningRecognizeMetadata").msgclass
        StreamingRecognizeResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.StreamingRecognizeResponse").msgclass
        StreamingRecognizeResponse::SpeechEventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.StreamingRecognizeResponse.SpeechEventType").enummodule
        StreamingRecognitionResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.StreamingRecognitionResult").msgclass
        SpeechRecognitionResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.SpeechRecognitionResult").msgclass
        SpeechRecognitionAlternative = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.SpeechRecognitionAlternative").msgclass
        WordInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.WordInfo").msgclass
        SpeechAdaptationInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1.SpeechAdaptationInfo").msgclass
      end
    end
  end
end
