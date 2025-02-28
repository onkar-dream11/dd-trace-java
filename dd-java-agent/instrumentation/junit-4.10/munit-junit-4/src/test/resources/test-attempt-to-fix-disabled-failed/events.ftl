[ {
  "content" : {
    "duration" : ${content_duration},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid},
      "_dd.profiling.ctx" : "test",
      "_dd.tracer_host" : ${content_meta__dd_tracer_host},
      "component" : "munit",
      "dummy_ci_tag" : "dummy_ci_tag_value",
      "env" : "none",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "runtime-id" : ${content_meta_runtime_id},
      "span.kind" : "test_session_end",
      "test.command" : "munit-junit-4",
      "test.framework" : "munit",
      "test.framework_version" : ${content_meta_test_framework_version},
      "test.status" : "fail",
      "test.test_management.enabled" : "true",
      "test.type" : "test",
      "test_session.name" : "session-name"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count},
      "_dd.profiling.enabled" : 0,
      "_dd.trace_span_attribute_schema" : 0,
      "process_id" : ${content_metrics_process_id}
    },
    "name" : "munit.test_session",
    "resource" : "munit-junit-4",
    "service" : "worker.org.gradle.process.internal.worker.gradleworkermain",
    "start" : ${content_start},
    "test_session_id" : ${content_test_session_id}
  },
  "type" : "test_session_end",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_2},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_2},
      "component" : "munit",
      "dummy_ci_tag" : "dummy_ci_tag_value",
      "env" : "none",
      "library_version" : ${content_meta_library_version},
      "span.kind" : "test_module_end",
      "test.framework" : "munit",
      "test.framework_version" : ${content_meta_test_framework_version},
      "test.module" : "munit-junit-4",
      "test.status" : "fail",
      "test.test_management.enabled" : "true",
      "test.type" : "test",
      "test_session.name" : "session-name"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_2}
    },
    "name" : "munit.test_module",
    "resource" : "munit-junit-4",
    "service" : "worker.org.gradle.process.internal.worker.gradleworkermain",
    "start" : ${content_start_2},
    "test_module_id" : ${content_test_module_id},
    "test_session_id" : ${content_test_session_id}
  },
  "type" : "test_module_end",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_3},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_3},
      "component" : "munit",
      "dummy_ci_tag" : "dummy_ci_tag_value",
      "env" : "none",
      "library_version" : ${content_meta_library_version},
      "span.kind" : "test_suite_end",
      "test.codeowners" : "[\"owner1\",\"owner2\"]",
      "test.framework" : "munit",
      "test.framework_version" : ${content_meta_test_framework_version},
      "test.module" : "munit-junit-4",
      "test.source.file" : "dummy_source_path",
      "test.status" : "fail",
      "test.suite" : "org.example.TestFailedMUnit",
      "test.type" : "test",
      "test_session.name" : "session-name"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_3},
      "test.source.end" : 19,
      "test.source.start" : 11
    },
    "name" : "munit.test_suite",
    "resource" : "org.example.TestFailedMUnit",
    "service" : "worker.org.gradle.process.internal.worker.gradleworkermain",
    "start" : ${content_start_3},
    "test_module_id" : ${content_test_module_id},
    "test_session_id" : ${content_test_session_id},
    "test_suite_id" : ${content_test_suite_id}
  },
  "type" : "test_suite_end",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_4},
    "error" : 1,
    "meta" : {
      "_dd.profiling.ctx" : "test",
      "_dd.tracer_host" : ${content_meta__dd_tracer_host},
      "component" : "munit",
      "dummy_ci_tag" : "dummy_ci_tag_value",
      "env" : "none",
      "error.message" : ${content_meta_error_message},
      "error.stack" : ${content_meta_error_stack},
      "error.type" : "munit.ComparisonFailException",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "runtime-id" : ${content_meta_runtime_id},
      "span.kind" : "test",
      "test.codeowners" : "[\"owner1\",\"owner2\"]",
      "test.framework" : "munit",
      "test.framework_version" : ${content_meta_test_framework_version},
      "test.module" : "munit-junit-4",
      "test.name" : "Calculator.add",
      "test.source.file" : "dummy_source_path",
      "test.status" : "fail",
      "test.suite" : "org.example.TestFailedMUnit",
      "test.test_management.is_attempt_to_fix" : "true",
      "test.test_management.is_test_disabled" : "true",
      "test.traits" : "{\"category\":[\"myTag\"]}",
      "test.type" : "test",
      "test_session.name" : "session-name"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_4},
      "_dd.profiling.enabled" : 0,
      "_dd.trace_span_attribute_schema" : 0,
      "process_id" : ${content_metrics_process_id}
    },
    "name" : "munit.test",
    "parent_id" : ${content_parent_id},
    "resource" : "org.example.TestFailedMUnit.Calculator.add",
    "service" : "worker.org.gradle.process.internal.worker.gradleworkermain",
    "span_id" : ${content_span_id},
    "start" : ${content_start_4},
    "test_module_id" : ${content_test_module_id},
    "test_session_id" : ${content_test_session_id},
    "test_suite_id" : ${content_test_suite_id},
    "trace_id" : ${content_trace_id}
  },
  "type" : "test",
  "version" : 2
}, {
  "content" : {
    "duration" : ${content_duration_5},
    "error" : 1,
    "meta" : {
      "_dd.profiling.ctx" : "test",
      "_dd.tracer_host" : ${content_meta__dd_tracer_host},
      "component" : "munit",
      "dummy_ci_tag" : "dummy_ci_tag_value",
      "env" : "none",
      "error.message" : ${content_meta_error_message},
      "error.stack" : ${content_meta_error_stack_2},
      "error.type" : "munit.ComparisonFailException",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "runtime-id" : ${content_meta_runtime_id},
      "span.kind" : "test",
      "test.codeowners" : "[\"owner1\",\"owner2\"]",
      "test.framework" : "munit",
      "test.framework_version" : ${content_meta_test_framework_version},
      "test.is_retry" : "true",
      "test.module" : "munit-junit-4",
      "test.name" : "Calculator.add",
      "test.retry_reason" : "attempt_to_fix",
      "test.source.file" : "dummy_source_path",
      "test.status" : "fail",
      "test.suite" : "org.example.TestFailedMUnit",
      "test.test_management.is_attempt_to_fix" : "true",
      "test.test_management.is_test_disabled" : "true",
      "test.traits" : "{\"category\":[\"myTag\"]}",
      "test.type" : "test",
      "test_session.name" : "session-name"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_5},
      "_dd.profiling.enabled" : 0,
      "_dd.trace_span_attribute_schema" : 0,
      "process_id" : ${content_metrics_process_id}
    },
    "name" : "munit.test",
    "parent_id" : ${content_parent_id},
    "resource" : "org.example.TestFailedMUnit.Calculator.add",
    "service" : "worker.org.gradle.process.internal.worker.gradleworkermain",
    "span_id" : ${content_span_id_2},
    "start" : ${content_start_5},
    "test_module_id" : ${content_test_module_id},
    "test_session_id" : ${content_test_session_id},
    "test_suite_id" : ${content_test_suite_id},
    "trace_id" : ${content_trace_id_2}
  },
  "type" : "test",
  "version" : 2
}, {
  "content" : {
    "duration" : ${content_duration_6},
    "error" : 1,
    "meta" : {
      "_dd.profiling.ctx" : "test",
      "_dd.tracer_host" : ${content_meta__dd_tracer_host},
      "component" : "munit",
      "dummy_ci_tag" : "dummy_ci_tag_value",
      "env" : "none",
      "error.message" : ${content_meta_error_message},
      "error.stack" : ${content_meta_error_stack_3},
      "error.type" : "munit.ComparisonFailException",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "runtime-id" : ${content_meta_runtime_id},
      "span.kind" : "test",
      "test.codeowners" : "[\"owner1\",\"owner2\"]",
      "test.framework" : "munit",
      "test.framework_version" : ${content_meta_test_framework_version},
      "test.is_retry" : "true",
      "test.module" : "munit-junit-4",
      "test.name" : "Calculator.add",
      "test.retry_reason" : "attempt_to_fix",
      "test.source.file" : "dummy_source_path",
      "test.status" : "fail",
      "test.suite" : "org.example.TestFailedMUnit",
      "test.test_management.is_attempt_to_fix" : "true",
      "test.test_management.is_test_disabled" : "true",
      "test.traits" : "{\"category\":[\"myTag\"]}",
      "test.type" : "test",
      "test_session.name" : "session-name"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_6},
      "_dd.profiling.enabled" : 0,
      "_dd.trace_span_attribute_schema" : 0,
      "process_id" : ${content_metrics_process_id}
    },
    "name" : "munit.test",
    "parent_id" : ${content_parent_id},
    "resource" : "org.example.TestFailedMUnit.Calculator.add",
    "service" : "worker.org.gradle.process.internal.worker.gradleworkermain",
    "span_id" : ${content_span_id_3},
    "start" : ${content_start_6},
    "test_module_id" : ${content_test_module_id},
    "test_session_id" : ${content_test_session_id},
    "test_suite_id" : ${content_test_suite_id},
    "trace_id" : ${content_trace_id_3}
  },
  "type" : "test",
  "version" : 2
}, {
  "content" : {
    "duration" : ${content_duration_7},
    "error" : 1,
    "meta" : {
      "_dd.profiling.ctx" : "test",
      "_dd.tracer_host" : ${content_meta__dd_tracer_host},
      "component" : "munit",
      "dummy_ci_tag" : "dummy_ci_tag_value",
      "env" : "none",
      "error.message" : ${content_meta_error_message},
      "error.stack" : ${content_meta_error_stack_4},
      "error.type" : "munit.ComparisonFailException",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "runtime-id" : ${content_meta_runtime_id},
      "span.kind" : "test",
      "test.codeowners" : "[\"owner1\",\"owner2\"]",
      "test.framework" : "munit",
      "test.framework_version" : ${content_meta_test_framework_version},
      "test.is_retry" : "true",
      "test.module" : "munit-junit-4",
      "test.name" : "Calculator.add",
      "test.retry_reason" : "attempt_to_fix",
      "test.source.file" : "dummy_source_path",
      "test.status" : "fail",
      "test.suite" : "org.example.TestFailedMUnit",
      "test.test_management.is_attempt_to_fix" : "true",
      "test.test_management.is_test_disabled" : "true",
      "test.traits" : "{\"category\":[\"myTag\"]}",
      "test.type" : "test",
      "test_session.name" : "session-name"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_7},
      "_dd.profiling.enabled" : 0,
      "_dd.trace_span_attribute_schema" : 0,
      "process_id" : ${content_metrics_process_id}
    },
    "name" : "munit.test",
    "parent_id" : ${content_parent_id},
    "resource" : "org.example.TestFailedMUnit.Calculator.add",
    "service" : "worker.org.gradle.process.internal.worker.gradleworkermain",
    "span_id" : ${content_span_id_4},
    "start" : ${content_start_7},
    "test_module_id" : ${content_test_module_id},
    "test_session_id" : ${content_test_session_id},
    "test_suite_id" : ${content_test_suite_id},
    "trace_id" : ${content_trace_id_4}
  },
  "type" : "test",
  "version" : 2
}, {
  "content" : {
    "duration" : ${content_duration_8},
    "error" : 1,
    "meta" : {
      "_dd.profiling.ctx" : "test",
      "_dd.tracer_host" : ${content_meta__dd_tracer_host},
      "component" : "munit",
      "dummy_ci_tag" : "dummy_ci_tag_value",
      "env" : "none",
      "error.message" : ${content_meta_error_message},
      "error.stack" : ${content_meta_error_stack_5},
      "error.type" : "munit.ComparisonFailException",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "runtime-id" : ${content_meta_runtime_id},
      "span.kind" : "test",
      "test.codeowners" : "[\"owner1\",\"owner2\"]",
      "test.framework" : "munit",
      "test.framework_version" : ${content_meta_test_framework_version},
      "test.has_failed_all_retries" : "true",
      "test.is_retry" : "true",
      "test.module" : "munit-junit-4",
      "test.name" : "Calculator.add",
      "test.retry_reason" : "attempt_to_fix",
      "test.source.file" : "dummy_source_path",
      "test.status" : "fail",
      "test.suite" : "org.example.TestFailedMUnit",
      "test.test_management.is_attempt_to_fix" : "true",
      "test.test_management.is_test_disabled" : "true",
      "test.traits" : "{\"category\":[\"myTag\"]}",
      "test.type" : "test",
      "test_session.name" : "session-name"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_8},
      "_dd.profiling.enabled" : 0,
      "_dd.trace_span_attribute_schema" : 0,
      "process_id" : ${content_metrics_process_id}
    },
    "name" : "munit.test",
    "parent_id" : ${content_parent_id},
    "resource" : "org.example.TestFailedMUnit.Calculator.add",
    "service" : "worker.org.gradle.process.internal.worker.gradleworkermain",
    "span_id" : ${content_span_id_5},
    "start" : ${content_start_8},
    "test_module_id" : ${content_test_module_id},
    "test_session_id" : ${content_test_session_id},
    "test_suite_id" : ${content_test_suite_id},
    "trace_id" : ${content_trace_id_5}
  },
  "type" : "test",
  "version" : 2
} ]