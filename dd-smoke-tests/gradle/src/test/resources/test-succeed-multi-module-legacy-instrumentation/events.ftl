[ {
  "content" : {
    "duration" : ${content_duration},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid},
      "_dd.test.is_user_provided_service" : "true",
      "ci.workspace_path" : ${content_meta_ci_workspace_path},
      "component" : "gradle",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version},
      "span.kind" : "test_module_end",
      "test.code_coverage.backfilled" : "true",
      "test.code_coverage.enabled" : "true",
      "test.command" : "gradle test",
      "test.framework" : "junit4",
      "test.framework_version" : "4.10",
      "test.itr.tests_skipping.enabled" : "true",
      "test.itr.tests_skipping.type" : "test",
      "test.module" : ":submodule-a:test",
      "test.status" : "pass",
      "test.type" : "test",
      "test_session.name" : "gradle test"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count},
      "test.code_coverage.lines_pct" : 0,
      "test.itr.tests_skipping.count" : 0
    },
    "name" : "gradle.test_module",
    "resource" : ":submodule-a:test",
    "service" : "test-gradle-service",
    "start" : ${content_start},
    "test_module_id" : ${content_test_module_id},
    "test_session_id" : ${content_test_session_id}
  },
  "type" : "test_module_end",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_2},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_2},
      "_dd.test.is_user_provided_service" : "true",
      "ci.workspace_path" : ${content_meta_ci_workspace_path},
      "component" : "gradle",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version},
      "span.kind" : "test_module_end",
      "test.code_coverage.backfilled" : "true",
      "test.code_coverage.enabled" : "true",
      "test.command" : "gradle test",
      "test.framework" : "junit4",
      "test.framework_version" : "4.10",
      "test.itr.tests_skipping.enabled" : "true",
      "test.itr.tests_skipping.type" : "test",
      "test.module" : ":submodule-b:test",
      "test.status" : "pass",
      "test.type" : "test",
      "test_session.name" : "gradle test"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_2},
      "test.code_coverage.lines_pct" : 0,
      "test.itr.tests_skipping.count" : 0
    },
    "name" : "gradle.test_module",
    "resource" : ":submodule-b:test",
    "service" : "test-gradle-service",
    "start" : ${content_start_2},
    "test_module_id" : ${content_test_module_id_2},
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
      "_dd.test.is_user_provided_service" : "true",
      "_dd.tracer_host" : ${content_meta__dd_tracer_host},
      "ci.workspace_path" : ${content_meta_ci_workspace_path},
      "component" : "junit4",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id_2},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version},
      "span.kind" : "test_suite_end",
      "test.framework" : "junit4",
      "test.framework_version" : "4.10",
      "test.module" : ":submodule-a:test",
      "test.source.file" : "submodule-a/src/test/java/datadog/smoke/TestSucceed.java",
      "test.status" : "pass",
      "test.suite" : "datadog.smoke.TestSucceed",
      "test.type" : "test",
      "test_session.name" : "gradle test"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_3},
      "_dd.profiling.enabled" : 0,
      "_dd.trace_span_attribute_schema" : 0,
      "process_id" : ${content_metrics_process_id},
      "test.source.end" : 13,
      "test.source.start" : 7
    },
    "name" : "junit4.test_suite",
    "resource" : "datadog.smoke.TestSucceed",
    "service" : "test-gradle-service",
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
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_4},
      "_dd.test.is_user_provided_service" : "true",
      "_dd.tracer_host" : ${content_meta__dd_tracer_host},
      "ci.workspace_path" : ${content_meta_ci_workspace_path},
      "component" : "junit4",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id_3},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version},
      "span.kind" : "test_suite_end",
      "test.framework" : "junit4",
      "test.framework_version" : "4.10",
      "test.module" : ":submodule-b:test",
      "test.source.file" : "submodule-b/src/test/java/datadog/smoke/TestSucceed.java",
      "test.status" : "pass",
      "test.suite" : "datadog.smoke.TestSucceed",
      "test.type" : "test",
      "test_session.name" : "gradle test"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_4},
      "_dd.profiling.enabled" : 0,
      "_dd.trace_span_attribute_schema" : 0,
      "process_id" : ${content_metrics_process_id_2},
      "test.source.end" : 13,
      "test.source.start" : 7
    },
    "name" : "junit4.test_suite",
    "resource" : "datadog.smoke.TestSucceed",
    "service" : "test-gradle-service",
    "start" : ${content_start_4},
    "test_module_id" : ${content_test_module_id_2},
    "test_session_id" : ${content_test_session_id},
    "test_suite_id" : ${content_test_suite_id_2}
  },
  "type" : "test_suite_end",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_5},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_5},
      "_dd.test.is_user_provided_service" : "true",
      "_dd.tracer_host" : ${content_meta__dd_tracer_host},
      "ci.workspace_path" : ${content_meta_ci_workspace_path},
      "component" : "junit4",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id_2},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version},
      "span.kind" : "test",
      "test.framework" : "junit4",
      "test.framework_version" : "4.10",
      "test.module" : ":submodule-a:test",
      "test.name" : "test_succeed",
      "test.source.file" : "submodule-a/src/test/java/datadog/smoke/TestSucceed.java",
      "test.source.method" : "test_succeed()V",
      "test.status" : "pass",
      "test.suite" : "datadog.smoke.TestSucceed",
      "test.type" : "test",
      "test_session.name" : "gradle test"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_5},
      "_dd.profiling.enabled" : 0,
      "_dd.trace_span_attribute_schema" : 0,
      "process_id" : ${content_metrics_process_id},
      "test.source.end" : 12,
      "test.source.start" : 9
    },
    "name" : "junit4.test",
    "parent_id" : ${content_parent_id},
    "resource" : "datadog.smoke.TestSucceed.test_succeed",
    "service" : "test-gradle-service",
    "span_id" : ${content_span_id},
    "start" : ${content_start_5},
    "test_module_id" : ${content_test_module_id},
    "test_session_id" : ${content_test_session_id},
    "test_suite_id" : ${content_test_suite_id},
    "trace_id" : ${content_trace_id}
  },
  "type" : "test",
  "version" : 2
}, {
  "content" : {
    "duration" : ${content_duration_6},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_6},
      "_dd.test.is_user_provided_service" : "true",
      "_dd.tracer_host" : ${content_meta__dd_tracer_host},
      "ci.workspace_path" : ${content_meta_ci_workspace_path},
      "component" : "junit4",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id_3},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version},
      "span.kind" : "test",
      "test.framework" : "junit4",
      "test.framework_version" : "4.10",
      "test.module" : ":submodule-b:test",
      "test.name" : "test_succeed",
      "test.source.file" : "submodule-b/src/test/java/datadog/smoke/TestSucceed.java",
      "test.source.method" : "test_succeed()V",
      "test.status" : "pass",
      "test.suite" : "datadog.smoke.TestSucceed",
      "test.type" : "test",
      "test_session.name" : "gradle test"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_6},
      "_dd.profiling.enabled" : 0,
      "_dd.trace_span_attribute_schema" : 0,
      "process_id" : ${content_metrics_process_id_2},
      "test.source.end" : 12,
      "test.source.start" : 9
    },
    "name" : "junit4.test",
    "parent_id" : ${content_parent_id},
    "resource" : "datadog.smoke.TestSucceed.test_succeed",
    "service" : "test-gradle-service",
    "span_id" : ${content_span_id_2},
    "start" : ${content_start_6},
    "test_module_id" : ${content_test_module_id_2},
    "test_session_id" : ${content_test_session_id},
    "test_suite_id" : ${content_test_suite_id_2},
    "trace_id" : ${content_trace_id_2}
  },
  "type" : "test",
  "version" : 2
}, {
  "content" : {
    "duration" : ${content_duration_7},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_7},
      "_dd.test.is_user_provided_service" : "true",
      "_dd.tracer_host" : ${content_meta__dd_tracer_host},
      "ci.workspace_path" : ${content_meta_ci_workspace_path},
      "component" : "gradle",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version},
      "span.kind" : "test_session_end",
      "test.code_coverage.backfilled" : "true",
      "test.code_coverage.enabled" : "true",
      "test.command" : "gradle test",
      "test.framework" : "junit4",
      "test.framework_version" : "4.10",
      "test.itr.tests_skipping.enabled" : "true",
      "test.itr.tests_skipping.type" : "test",
      "test.status" : "pass",
      "test.toolchain" : ${content_meta_test_toolchain},
      "test.type" : "test",
      "test_session.name" : "gradle test"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_7},
      "_dd.profiling.enabled" : 0,
      "_dd.trace_span_attribute_schema" : 0,
      "process_id" : ${content_metrics_process_id_3},
      "test.code_coverage.lines_pct" : 0,
      "test.itr.tests_skipping.count" : 0
    },
    "name" : "gradle.test_session",
    "resource" : "gradle-instrumentation-test-project",
    "service" : "test-gradle-service",
    "start" : ${content_start_7},
    "test_session_id" : ${content_test_session_id}
  },
  "type" : "test_session_end",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_8},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_8},
      "_dd.test.is_user_provided_service" : "true",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version}
    },
    "metrics" : { },
    "name" : "submodule_a_classes",
    "parent_id" : ${content_test_session_id},
    "resource" : "submodule_a_classes",
    "service" : "test-gradle-service",
    "span_id" : ${content_span_id_3},
    "start" : ${content_start_8},
    "trace_id" : ${content_test_session_id}
  },
  "type" : "span",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_9},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_9},
      "_dd.test.is_user_provided_service" : "true",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version}
    },
    "metrics" : { },
    "name" : "submodule_a_compileJava",
    "parent_id" : ${content_test_session_id},
    "resource" : "submodule_a_compileJava",
    "service" : "test-gradle-service",
    "span_id" : ${content_span_id_4},
    "start" : ${content_start_9},
    "trace_id" : ${content_test_session_id}
  },
  "type" : "span",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_10},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_10},
      "_dd.test.is_user_provided_service" : "true",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version}
    },
    "metrics" : { },
    "name" : "submodule_a_compileTestJava",
    "parent_id" : ${content_test_session_id},
    "resource" : "submodule_a_compileTestJava",
    "service" : "test-gradle-service",
    "span_id" : ${content_span_id_5},
    "start" : ${content_start_10},
    "trace_id" : ${content_test_session_id}
  },
  "type" : "span",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_11},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_11},
      "_dd.test.is_user_provided_service" : "true",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version}
    },
    "metrics" : { },
    "name" : "submodule_a_processResources",
    "parent_id" : ${content_test_session_id},
    "resource" : "submodule_a_processResources",
    "service" : "test-gradle-service",
    "span_id" : ${content_span_id_6},
    "start" : ${content_start_11},
    "trace_id" : ${content_test_session_id}
  },
  "type" : "span",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_12},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_12},
      "_dd.test.is_user_provided_service" : "true",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version}
    },
    "metrics" : { },
    "name" : "submodule_a_processTestResources",
    "parent_id" : ${content_test_session_id},
    "resource" : "submodule_a_processTestResources",
    "service" : "test-gradle-service",
    "span_id" : ${content_span_id_7},
    "start" : ${content_start_12},
    "trace_id" : ${content_test_session_id}
  },
  "type" : "span",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_13},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_13},
      "_dd.test.is_user_provided_service" : "true",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version}
    },
    "metrics" : { },
    "name" : "submodule_a_testClasses",
    "parent_id" : ${content_test_session_id},
    "resource" : "submodule_a_testClasses",
    "service" : "test-gradle-service",
    "span_id" : ${content_span_id_8},
    "start" : ${content_start_13},
    "trace_id" : ${content_test_session_id}
  },
  "type" : "span",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_14},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_14},
      "_dd.test.is_user_provided_service" : "true",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version}
    },
    "metrics" : { },
    "name" : "submodule_b_classes",
    "parent_id" : ${content_test_session_id},
    "resource" : "submodule_b_classes",
    "service" : "test-gradle-service",
    "span_id" : ${content_span_id_9},
    "start" : ${content_start_14},
    "trace_id" : ${content_test_session_id}
  },
  "type" : "span",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_15},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_15},
      "_dd.test.is_user_provided_service" : "true",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version}
    },
    "metrics" : { },
    "name" : "submodule_b_compileJava",
    "parent_id" : ${content_test_session_id},
    "resource" : "submodule_b_compileJava",
    "service" : "test-gradle-service",
    "span_id" : ${content_span_id_10},
    "start" : ${content_start_15},
    "trace_id" : ${content_test_session_id}
  },
  "type" : "span",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_16},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_16},
      "_dd.test.is_user_provided_service" : "true",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version}
    },
    "metrics" : { },
    "name" : "submodule_b_compileTestJava",
    "parent_id" : ${content_test_session_id},
    "resource" : "submodule_b_compileTestJava",
    "service" : "test-gradle-service",
    "span_id" : ${content_span_id_11},
    "start" : ${content_start_16},
    "trace_id" : ${content_test_session_id}
  },
  "type" : "span",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_17},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_17},
      "_dd.test.is_user_provided_service" : "true",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version}
    },
    "metrics" : { },
    "name" : "submodule_b_processResources",
    "parent_id" : ${content_test_session_id},
    "resource" : "submodule_b_processResources",
    "service" : "test-gradle-service",
    "span_id" : ${content_span_id_12},
    "start" : ${content_start_17},
    "trace_id" : ${content_test_session_id}
  },
  "type" : "span",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_18},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_18},
      "_dd.test.is_user_provided_service" : "true",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version}
    },
    "metrics" : { },
    "name" : "submodule_b_processTestResources",
    "parent_id" : ${content_test_session_id},
    "resource" : "submodule_b_processTestResources",
    "service" : "test-gradle-service",
    "span_id" : ${content_span_id_13},
    "start" : ${content_start_18},
    "trace_id" : ${content_test_session_id}
  },
  "type" : "span",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_19},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_19},
      "_dd.test.is_user_provided_service" : "true",
      "env" : "integration-test",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version}
    },
    "metrics" : { },
    "name" : "submodule_b_testClasses",
    "parent_id" : ${content_test_session_id},
    "resource" : "submodule_b_testClasses",
    "service" : "test-gradle-service",
    "span_id" : ${content_span_id_14},
    "start" : ${content_start_19},
    "trace_id" : ${content_test_session_id}
  },
  "type" : "span",
  "version" : 1
} ]