package datadog.remoteconfig;

public interface Capabilities {
  // This bitset is reserved according to the Remote Config spec.
  long CAPABILITY_ASM_ACTIVATION = 1 << 1;
  long CAPABILITY_ASM_IP_BLOCKING = 1 << 2;
  long CAPABILITY_ASM_DD_RULES = 1 << 3;
  long CAPABILITY_ASM_EXCLUSIONS = 1 << 4;
  long CAPABILITY_ASM_REQUEST_BLOCKING = 1 << 5;
  long CAPABILITY_ASM_RESPONSE_BLOCKING = 1 << 6;
  long CAPABILITY_ASM_USER_BLOCKING = 1 << 7;
  long CAPABILITY_ASM_CUSTOM_RULES = 1 << 8;
  long CAPABILITY_ASM_CUSTOM_BLOCKING_RESPONSE = 1 << 9;
  long CAPABILITY_ASM_TRUSTED_IPS = 1 << 10;
  long CAPABILITY_ASM_API_SECURITY_SAMPLE_RATE = 1 << 11;
  long CAPABILITY_APM_TRACING_SAMPLE_RATE = 1 << 12;
  long CAPABILITY_APM_LOGS_INJECTION = 1 << 13;
  long CAPABILITY_APM_HTTP_HEADER_TAGS = 1 << 14;
  long CAPABILITY_APM_CUSTOM_TAGS = 1 << 15;
  long CAPABILITY_ASM_PROCESSOR_OVERRIDES = 1 << 16;
  long CAPABILITY_ASM_CUSTOM_DATA_SCANNERS = 1 << 17;
  long CAPABILITY_ASM_EXCLUSION_DATA = 1 << 18;
  long CAPABILITY_APM_TRACING_TRACING_ENABLED = 1 << 19;
  long CAPABILITY_APM_TRACING_DATA_STREAMS_ENABLED = 1 << 20;
  long CAPABILITY_ASM_RASP_SQLI = 1 << 21;
  long CAPABILITY_ASM_RASP_LFI = 1 << 22;
  long CAPABILITY_ASM_RASP_SSRF = 1 << 23;
  long CAPABILITY_ASM_RASP_SHI = 1 << 24;
  long CAPABILITY_ASM_RASP_XXE = 1 << 25;
  long CAPABILITY_ASM_RASP_RCE = 1 << 26;
  long CAPABILITY_ASM_RASP_NOSQLI = 1 << 27;
  long CAPABILITY_ASM_RASP_XSS = 1 << 28;
  long CAPABILITY_APM_TRACING_SAMPLE_RULES = 1 << 29;
  long CAPABILITY_CSM_ACTIVATION = 1 << 30;
  long CAPABILITY_ASM_AUTO_USER_INSTRUM_MODE = 1L << 31;
  long CAPABILITY_ENDPOINT_FINGERPRINT = 1L << 32;
  long CAPABILITY_ASM_SESSION_FINGERPRINT = 1L << 33;
  long CAPABILITY_ASM_NETWORK_FINGERPRINT = 1L << 34;
  long CAPABILITY_ASM_HEADER_FINGERPRINT = 1L << 35;
  long CAPABILITY_ASM_RASP_CMDI = 1L << 37;
}
