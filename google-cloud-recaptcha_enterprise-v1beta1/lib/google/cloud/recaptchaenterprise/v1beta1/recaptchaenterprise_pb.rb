# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/recaptchaenterprise/v1beta1/recaptchaenterprise.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/recaptchaenterprise/v1beta1/recaptchaenterprise.proto", :syntax => :proto3) do
    add_message "google.cloud.recaptchaenterprise.v1beta1.CreateAssessmentRequest" do
      optional :parent, :string, 1
      optional :assessment, :message, 2, "google.cloud.recaptchaenterprise.v1beta1.Assessment"
    end
    add_message "google.cloud.recaptchaenterprise.v1beta1.TransactionEvent" do
      optional :event_type, :enum, 1, "google.cloud.recaptchaenterprise.v1beta1.TransactionEvent.TransactionEventType"
      optional :reason, :string, 2
      optional :value, :double, 3
      optional :event_time, :message, 4, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.recaptchaenterprise.v1beta1.TransactionEvent.TransactionEventType" do
      value :TRANSACTION_EVENT_TYPE_UNSPECIFIED, 0
      value :MERCHANT_APPROVE, 1
      value :MERCHANT_DENY, 2
      value :MANUAL_REVIEW, 3
      value :AUTHORIZATION, 4
      value :AUTHORIZATION_DECLINE, 5
      value :PAYMENT_CAPTURE, 6
      value :PAYMENT_CAPTURE_DECLINE, 7
      value :CANCEL, 8
      value :CHARGEBACK_INQUIRY, 9
      value :CHARGEBACK_ALERT, 10
      value :FRAUD_NOTIFICATION, 11
      value :CHARGEBACK, 12
      value :CHARGEBACK_REPRESENTMENT, 13
      value :CHARGEBACK_REVERSE, 14
      value :REFUND_REQUEST, 15
      value :REFUND_DECLINE, 16
      value :REFUND, 17
      value :REFUND_REVERSE, 18
    end
    add_message "google.cloud.recaptchaenterprise.v1beta1.AnnotateAssessmentRequest" do
      optional :name, :string, 1
      optional :annotation, :enum, 2, "google.cloud.recaptchaenterprise.v1beta1.AnnotateAssessmentRequest.Annotation"
      repeated :reasons, :enum, 3, "google.cloud.recaptchaenterprise.v1beta1.AnnotateAssessmentRequest.Reason"
      optional :hashed_account_id, :bytes, 4
      optional :transaction_event, :message, 5, "google.cloud.recaptchaenterprise.v1beta1.TransactionEvent"
    end
    add_enum "google.cloud.recaptchaenterprise.v1beta1.AnnotateAssessmentRequest.Annotation" do
      value :ANNOTATION_UNSPECIFIED, 0
      value :LEGITIMATE, 1
      value :FRAUDULENT, 2
      value :PASSWORD_CORRECT, 3
      value :PASSWORD_INCORRECT, 4
    end
    add_enum "google.cloud.recaptchaenterprise.v1beta1.AnnotateAssessmentRequest.Reason" do
      value :REASON_UNSPECIFIED, 0
      value :CHARGEBACK, 1
      value :CHARGEBACK_FRAUD, 8
      value :CHARGEBACK_DISPUTE, 9
      value :REFUND, 10
      value :REFUND_FRAUD, 11
      value :TRANSACTION_ACCEPTED, 12
      value :TRANSACTION_DECLINED, 13
      value :PAYMENT_HEURISTICS, 2
      value :INITIATED_TWO_FACTOR, 7
      value :PASSED_TWO_FACTOR, 3
      value :FAILED_TWO_FACTOR, 4
      value :CORRECT_PASSWORD, 5
      value :INCORRECT_PASSWORD, 6
      value :SOCIAL_SPAM, 14
    end
    add_message "google.cloud.recaptchaenterprise.v1beta1.AnnotateAssessmentResponse" do
    end
    add_message "google.cloud.recaptchaenterprise.v1beta1.PasswordLeakVerification" do
      optional :hashed_user_credentials, :bytes, 1
      optional :credentials_leaked, :bool, 2
      optional :canonicalized_username, :string, 3
    end
    add_message "google.cloud.recaptchaenterprise.v1beta1.Assessment" do
      optional :name, :string, 1
      optional :event, :message, 2, "google.cloud.recaptchaenterprise.v1beta1.Event"
      optional :score, :float, 3
      optional :token_properties, :message, 4, "google.cloud.recaptchaenterprise.v1beta1.TokenProperties"
      repeated :reasons, :enum, 5, "google.cloud.recaptchaenterprise.v1beta1.Assessment.ClassificationReason"
      optional :password_leak_verification, :message, 7, "google.cloud.recaptchaenterprise.v1beta1.PasswordLeakVerification"
      optional :account_defender_assessment, :message, 8, "google.cloud.recaptchaenterprise.v1beta1.AccountDefenderAssessment"
      optional :fraud_prevention_assessment, :message, 11, "google.cloud.recaptchaenterprise.v1beta1.FraudPreventionAssessment"
    end
    add_enum "google.cloud.recaptchaenterprise.v1beta1.Assessment.ClassificationReason" do
      value :CLASSIFICATION_REASON_UNSPECIFIED, 0
      value :AUTOMATION, 1
      value :UNEXPECTED_ENVIRONMENT, 2
      value :TOO_MUCH_TRAFFIC, 3
      value :UNEXPECTED_USAGE_PATTERNS, 4
      value :LOW_CONFIDENCE_SCORE, 5
      value :SUSPECTED_CARDING, 6
      value :SUSPECTED_CHARGEBACK, 7
    end
    add_message "google.cloud.recaptchaenterprise.v1beta1.Event" do
      optional :token, :string, 1
      optional :site_key, :string, 2
      optional :user_agent, :string, 3
      optional :user_ip_address, :string, 4
      optional :expected_action, :string, 5
      optional :hashed_account_id, :bytes, 6
      optional :transaction_data, :message, 13, "google.cloud.recaptchaenterprise.v1beta1.TransactionData"
    end
    add_message "google.cloud.recaptchaenterprise.v1beta1.TransactionData" do
      proto3_optional :transaction_id, :string, 11
      optional :payment_method, :string, 1
      optional :card_bin, :string, 2
      optional :card_last_four, :string, 3
      optional :currency_code, :string, 4
      optional :value, :double, 5
      optional :shipping_value, :double, 12
      optional :shipping_address, :message, 6, "google.cloud.recaptchaenterprise.v1beta1.TransactionData.Address"
      optional :billing_address, :message, 7, "google.cloud.recaptchaenterprise.v1beta1.TransactionData.Address"
      optional :user, :message, 8, "google.cloud.recaptchaenterprise.v1beta1.TransactionData.User"
      repeated :merchants, :message, 13, "google.cloud.recaptchaenterprise.v1beta1.TransactionData.User"
      repeated :items, :message, 14, "google.cloud.recaptchaenterprise.v1beta1.TransactionData.Item"
      optional :gateway_info, :message, 10, "google.cloud.recaptchaenterprise.v1beta1.TransactionData.GatewayInfo"
    end
    add_message "google.cloud.recaptchaenterprise.v1beta1.TransactionData.Address" do
      optional :recipient, :string, 1
      repeated :address, :string, 2
      optional :locality, :string, 3
      optional :administrative_area, :string, 4
      optional :region_code, :string, 5
      optional :postal_code, :string, 6
    end
    add_message "google.cloud.recaptchaenterprise.v1beta1.TransactionData.User" do
      optional :account_id, :string, 6
      optional :creation_ms, :int64, 1
      optional :email, :string, 2
      optional :email_verified, :bool, 3
      optional :phone_number, :string, 4
      optional :phone_verified, :bool, 5
    end
    add_message "google.cloud.recaptchaenterprise.v1beta1.TransactionData.Item" do
      optional :name, :string, 1
      optional :value, :double, 2
      optional :quantity, :int64, 3
      optional :merchant_account_id, :string, 4
    end
    add_message "google.cloud.recaptchaenterprise.v1beta1.TransactionData.GatewayInfo" do
      optional :name, :string, 1
      optional :gateway_response_code, :string, 2
      optional :avs_response_code, :string, 3
      optional :cvv_response_code, :string, 4
    end
    add_message "google.cloud.recaptchaenterprise.v1beta1.TokenProperties" do
      optional :valid, :bool, 1
      optional :invalid_reason, :enum, 2, "google.cloud.recaptchaenterprise.v1beta1.TokenProperties.InvalidReason"
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
      optional :hostname, :string, 4
      optional :action, :string, 5
    end
    add_enum "google.cloud.recaptchaenterprise.v1beta1.TokenProperties.InvalidReason" do
      value :INVALID_REASON_UNSPECIFIED, 0
      value :UNKNOWN_INVALID_REASON, 1
      value :MALFORMED, 2
      value :EXPIRED, 3
      value :DUPE, 4
      value :SITE_MISMATCH, 5
      value :MISSING, 6
      value :BROWSER_ERROR, 7
    end
    add_message "google.cloud.recaptchaenterprise.v1beta1.FraudPreventionAssessment" do
      optional :transaction_risk, :float, 1
      optional :stolen_instrument_verdict, :message, 2, "google.cloud.recaptchaenterprise.v1beta1.FraudPreventionAssessment.StolenInstrumentVerdict"
      optional :card_testing_verdict, :message, 3, "google.cloud.recaptchaenterprise.v1beta1.FraudPreventionAssessment.CardTestingVerdict"
    end
    add_message "google.cloud.recaptchaenterprise.v1beta1.FraudPreventionAssessment.StolenInstrumentVerdict" do
      optional :risk, :float, 1
    end
    add_message "google.cloud.recaptchaenterprise.v1beta1.FraudPreventionAssessment.CardTestingVerdict" do
      optional :risk, :float, 1
    end
    add_message "google.cloud.recaptchaenterprise.v1beta1.AccountDefenderAssessment" do
      repeated :labels, :enum, 1, "google.cloud.recaptchaenterprise.v1beta1.AccountDefenderAssessment.AccountDefenderLabel"
    end
    add_enum "google.cloud.recaptchaenterprise.v1beta1.AccountDefenderAssessment.AccountDefenderLabel" do
      value :ACCOUNT_DEFENDER_LABEL_UNSPECIFIED, 0
      value :PROFILE_MATCH, 1
      value :SUSPICIOUS_LOGIN_ACTIVITY, 2
      value :SUSPICIOUS_ACCOUNT_CREATION, 3
      value :RELATED_ACCOUNTS_NUMBER_HIGH, 4
    end
  end
end

module Google
  module Cloud
    module RecaptchaEnterprise
      module V1beta1
        CreateAssessmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.CreateAssessmentRequest").msgclass
        TransactionEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.TransactionEvent").msgclass
        TransactionEvent::TransactionEventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.TransactionEvent.TransactionEventType").enummodule
        AnnotateAssessmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.AnnotateAssessmentRequest").msgclass
        AnnotateAssessmentRequest::Annotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.AnnotateAssessmentRequest.Annotation").enummodule
        AnnotateAssessmentRequest::Reason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.AnnotateAssessmentRequest.Reason").enummodule
        AnnotateAssessmentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.AnnotateAssessmentResponse").msgclass
        PasswordLeakVerification = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.PasswordLeakVerification").msgclass
        Assessment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.Assessment").msgclass
        Assessment::ClassificationReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.Assessment.ClassificationReason").enummodule
        Event = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.Event").msgclass
        TransactionData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.TransactionData").msgclass
        TransactionData::Address = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.TransactionData.Address").msgclass
        TransactionData::User = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.TransactionData.User").msgclass
        TransactionData::Item = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.TransactionData.Item").msgclass
        TransactionData::GatewayInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.TransactionData.GatewayInfo").msgclass
        TokenProperties = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.TokenProperties").msgclass
        TokenProperties::InvalidReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.TokenProperties.InvalidReason").enummodule
        FraudPreventionAssessment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.FraudPreventionAssessment").msgclass
        FraudPreventionAssessment::StolenInstrumentVerdict = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.FraudPreventionAssessment.StolenInstrumentVerdict").msgclass
        FraudPreventionAssessment::CardTestingVerdict = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.FraudPreventionAssessment.CardTestingVerdict").msgclass
        AccountDefenderAssessment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.AccountDefenderAssessment").msgclass
        AccountDefenderAssessment::AccountDefenderLabel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recaptchaenterprise.v1beta1.AccountDefenderAssessment.AccountDefenderLabel").enummodule
      end
    end
  end
end
