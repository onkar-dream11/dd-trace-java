[ {
  "content" : {
    "duration" : ${content_duration},
    "error" : 1,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid},
      "_dd.test.is_user_provided_service" : "true",
      "_dd.tracer_host" : ${content_meta__dd_tracer_host},
      "ci.workspace_path" : ${content_meta_ci_workspace_path},
      "component" : "maven",
      "env" : "integration-test",
      "error.message" : ${content_meta_error_message},
      "error.stack" : ${content_meta_error_stack},
      "error.type" : "org.apache.maven.lifecycle.LifecycleExecutionException",
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
      "test.code_coverage.enabled" : "true",
      "test.command" : "mvn -B test",
      "test.framework" : "junit4",
      "test.framework_version" : "4.13.2",
      "test.status" : "fail",
      "test.toolchain" : ${content_meta_test_toolchain},
      "test.type" : "test",
      "test_session.name" : "mvn -B test"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count},
      "_dd.profiling.enabled" : 0,
      "_dd.trace_span_attribute_schema" : 0,
      "process_id" : ${content_metrics_process_id},
      "test.code_coverage.lines_pct" : 33
    },
    "name" : "maven.test_session",
    "resource" : "Maven Smoke Tests Project",
    "service" : "test-maven-service",
    "start" : ${content_start},
    "test_session_id" : ${content_test_session_id}
  },
  "type" : "test_session_end",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_2},
    "error" : 1,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_2},
      "_dd.test.is_user_provided_service" : "true",
      "ci.workspace_path" : ${content_meta_ci_workspace_path},
      "component" : "maven",
      "env" : "integration-test",
      "error.message" : ${content_meta_error_message},
      "error.stack" : ${content_meta_error_stack_2},
      "error.type" : "org.apache.maven.lifecycle.LifecycleExecutionException",
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
      "test.code_coverage.enabled" : "true",
      "test.command" : "mvn -B test",
      "test.execution" : "maven-surefire-plugin:test:default-test",
      "test.framework" : "junit4",
      "test.framework_version" : "4.13.2",
      "test.module" : "Maven Smoke Tests Project maven-surefire-plugin default-test",
      "test.status" : "fail",
      "test.type" : "test",
      "test_session.name" : "mvn -B test"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_2},
      "test.code_coverage.lines_pct" : 33
    },
    "name" : "maven.test_module",
    "resource" : "Maven Smoke Tests Project maven-surefire-plugin default-test",
    "service" : "test-maven-service",
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
      "_dd.test.is_user_provided_service" : "true",
      "env" : "integration-test",
      "execution" : "default",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "plugin" : "jacoco-maven-plugin",
      "project" : "Maven Smoke Tests Project",
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version}
    },
    "metrics" : { },
    "name" : "Maven_Smoke_Tests_Project_jacoco_maven_plugin_default",
    "parent_id" : ${content_test_session_id},
    "resource" : "Maven_Smoke_Tests_Project_jacoco_maven_plugin_default",
    "service" : "test-maven-service",
    "span_id" : ${content_span_id},
    "start" : ${content_start_3},
    "trace_id" : ${content_test_session_id}
  },
  "type" : "span",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_4},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_4},
      "_dd.test.is_user_provided_service" : "true",
      "env" : "integration-test",
      "execution" : "default-compile",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "plugin" : "maven-compiler-plugin",
      "project" : "Maven Smoke Tests Project",
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version}
    },
    "metrics" : { },
    "name" : "Maven_Smoke_Tests_Project_maven_compiler_plugin_default_compile",
    "parent_id" : ${content_test_session_id},
    "resource" : "Maven_Smoke_Tests_Project_maven_compiler_plugin_default_compile",
    "service" : "test-maven-service",
    "span_id" : ${content_span_id_2},
    "start" : ${content_start_4},
    "trace_id" : ${content_test_session_id}
  },
  "type" : "span",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_5},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_5},
      "_dd.test.is_user_provided_service" : "true",
      "env" : "integration-test",
      "execution" : "default-testCompile",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "plugin" : "maven-compiler-plugin",
      "project" : "Maven Smoke Tests Project",
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version}
    },
    "metrics" : { },
    "name" : "Maven_Smoke_Tests_Project_maven_compiler_plugin_default_testCompile",
    "parent_id" : ${content_test_session_id},
    "resource" : "Maven_Smoke_Tests_Project_maven_compiler_plugin_default_testCompile",
    "service" : "test-maven-service",
    "span_id" : ${content_span_id_3},
    "start" : ${content_start_5},
    "trace_id" : ${content_test_session_id}
  },
  "type" : "span",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_6},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_6},
      "_dd.test.is_user_provided_service" : "true",
      "env" : "integration-test",
      "execution" : "default-resources",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "plugin" : "maven-resources-plugin",
      "project" : "Maven Smoke Tests Project",
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version}
    },
    "metrics" : { },
    "name" : "Maven_Smoke_Tests_Project_maven_resources_plugin_default_resources",
    "parent_id" : ${content_test_session_id},
    "resource" : "Maven_Smoke_Tests_Project_maven_resources_plugin_default_resources",
    "service" : "test-maven-service",
    "span_id" : ${content_span_id_4},
    "start" : ${content_start_6},
    "trace_id" : ${content_test_session_id}
  },
  "type" : "span",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_7},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_7},
      "_dd.test.is_user_provided_service" : "true",
      "env" : "integration-test",
      "execution" : "default-testResources",
      "language" : "jvm",
      "library_version" : ${content_meta_library_version},
      "os.architecture" : ${content_meta_os_architecture},
      "os.platform" : ${content_meta_os_platform},
      "os.version" : ${content_meta_os_version},
      "plugin" : "maven-resources-plugin",
      "project" : "Maven Smoke Tests Project",
      "runtime-id" : ${content_meta_runtime_id},
      "runtime.name" : ${content_meta_runtime_name},
      "runtime.vendor" : ${content_meta_runtime_vendor},
      "runtime.version" : ${content_meta_runtime_version}
    },
    "metrics" : { },
    "name" : "Maven_Smoke_Tests_Project_maven_resources_plugin_default_testResources",
    "parent_id" : ${content_test_session_id},
    "resource" : "Maven_Smoke_Tests_Project_maven_resources_plugin_default_testResources",
    "service" : "test-maven-service",
    "span_id" : ${content_span_id_5},
    "start" : ${content_start_7},
    "trace_id" : ${content_test_session_id}
  },
  "type" : "span",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_8},
    "error" : 0,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_8},
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
      "test.framework_version" : "4.13.2",
      "test.module" : "Maven Smoke Tests Project maven-surefire-plugin default-test",
      "test.source.file" : "src/test/java/datadog/smoke/TestFailed.java",
      "test.status" : "fail",
      "test.suite" : "datadog.smoke.TestFailed",
      "test.type" : "test",
      "test_session.name" : "mvn -B test"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_3},
      "_dd.profiling.enabled" : 0,
      "_dd.trace_span_attribute_schema" : 0,
      "process_id" : ${content_metrics_process_id_2},
      "test.source.end" : 14,
      "test.source.start" : 7
    },
    "name" : "junit4.test_suite",
    "resource" : "datadog.smoke.TestFailed",
    "service" : "test-maven-service",
    "start" : ${content_start_8},
    "test_module_id" : ${content_test_module_id},
    "test_session_id" : ${content_test_session_id},
    "test_suite_id" : ${content_test_suite_id}
  },
  "type" : "test_suite_end",
  "version" : 1
}, {
  "content" : {
    "duration" : ${content_duration_9},
    "error" : 1,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_9},
      "_dd.test.is_user_provided_service" : "true",
      "_dd.tracer_host" : ${content_meta__dd_tracer_host},
      "ci.workspace_path" : ${content_meta_ci_workspace_path},
      "component" : "junit4",
      "env" : "integration-test",
      "error.stack" : ${content_meta_error_stack_3},
      "error.type" : "java.lang.AssertionError",
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
      "test.framework_version" : "4.13.2",
      "test.module" : "Maven Smoke Tests Project maven-surefire-plugin default-test",
      "test.name" : "test_failed",
      "test.source.file" : "src/test/java/datadog/smoke/TestFailed.java",
      "test.source.method" : "test_failed()V",
      "test.status" : "fail",
      "test.suite" : "datadog.smoke.TestFailed",
      "test.type" : "test",
      "test_session.name" : "mvn -B test"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_4},
      "_dd.profiling.enabled" : 0,
      "_dd.trace_span_attribute_schema" : 0,
      "process_id" : ${content_metrics_process_id_2},
      "test.source.end" : 12,
      "test.source.start" : 9
    },
    "name" : "junit4.test",
    "parent_id" : ${content_parent_id},
    "resource" : "datadog.smoke.TestFailed.test_failed",
    "service" : "test-maven-service",
    "span_id" : ${content_span_id_6},
    "start" : ${content_start_9},
    "test_module_id" : ${content_test_module_id},
    "test_session_id" : ${content_test_session_id},
    "test_suite_id" : ${content_test_suite_id},
    "trace_id" : ${content_trace_id}
  },
  "type" : "test",
  "version" : 2
}, {
  "content" : {
    "duration" : ${content_duration_10},
    "error" : 1,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_10},
      "_dd.test.is_user_provided_service" : "true",
      "_dd.tracer_host" : ${content_meta__dd_tracer_host},
      "ci.workspace_path" : ${content_meta_ci_workspace_path},
      "component" : "junit4",
      "env" : "integration-test",
      "error.stack" : ${content_meta_error_stack_4},
      "error.type" : "java.lang.AssertionError",
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
      "test.framework_version" : "4.13.2",
      "test.is_retry" : "true",
      "test.module" : "Maven Smoke Tests Project maven-surefire-plugin default-test",
      "test.name" : "test_failed",
      "test.retry_reason" : "atr",
      "test.source.file" : "src/test/java/datadog/smoke/TestFailed.java",
      "test.source.method" : "test_failed()V",
      "test.status" : "fail",
      "test.suite" : "datadog.smoke.TestFailed",
      "test.type" : "test",
      "test_session.name" : "mvn -B test"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_5},
      "_dd.profiling.enabled" : 0,
      "_dd.trace_span_attribute_schema" : 0,
      "process_id" : ${content_metrics_process_id_2},
      "test.source.end" : 12,
      "test.source.start" : 9
    },
    "name" : "junit4.test",
    "parent_id" : ${content_parent_id},
    "resource" : "datadog.smoke.TestFailed.test_failed",
    "service" : "test-maven-service",
    "span_id" : ${content_span_id_7},
    "start" : ${content_start_10},
    "test_module_id" : ${content_test_module_id},
    "test_session_id" : ${content_test_session_id},
    "test_suite_id" : ${content_test_suite_id},
    "trace_id" : ${content_trace_id_2}
  },
  "type" : "test",
  "version" : 2
}, {
  "content" : {
    "duration" : ${content_duration_11},
    "error" : 1,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_11},
      "_dd.test.is_user_provided_service" : "true",
      "_dd.tracer_host" : ${content_meta__dd_tracer_host},
      "ci.workspace_path" : ${content_meta_ci_workspace_path},
      "component" : "junit4",
      "env" : "integration-test",
      "error.stack" : ${content_meta_error_stack_5},
      "error.type" : "java.lang.AssertionError",
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
      "test.framework_version" : "4.13.2",
      "test.is_retry" : "true",
      "test.module" : "Maven Smoke Tests Project maven-surefire-plugin default-test",
      "test.name" : "test_failed",
      "test.retry_reason" : "atr",
      "test.source.file" : "src/test/java/datadog/smoke/TestFailed.java",
      "test.source.method" : "test_failed()V",
      "test.status" : "fail",
      "test.suite" : "datadog.smoke.TestFailed",
      "test.type" : "test",
      "test_session.name" : "mvn -B test"
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
    "resource" : "datadog.smoke.TestFailed.test_failed",
    "service" : "test-maven-service",
    "span_id" : ${content_span_id_8},
    "start" : ${content_start_11},
    "test_module_id" : ${content_test_module_id},
    "test_session_id" : ${content_test_session_id},
    "test_suite_id" : ${content_test_suite_id},
    "trace_id" : ${content_trace_id_3}
  },
  "type" : "test",
  "version" : 2
}, {
  "content" : {
    "duration" : ${content_duration_12},
    "error" : 1,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_12},
      "_dd.test.is_user_provided_service" : "true",
      "_dd.tracer_host" : ${content_meta__dd_tracer_host},
      "ci.workspace_path" : ${content_meta_ci_workspace_path},
      "component" : "junit4",
      "env" : "integration-test",
      "error.stack" : ${content_meta_error_stack_6},
      "error.type" : "java.lang.AssertionError",
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
      "test.framework_version" : "4.13.2",
      "test.is_retry" : "true",
      "test.module" : "Maven Smoke Tests Project maven-surefire-plugin default-test",
      "test.name" : "test_failed",
      "test.retry_reason" : "atr",
      "test.source.file" : "src/test/java/datadog/smoke/TestFailed.java",
      "test.source.method" : "test_failed()V",
      "test.status" : "fail",
      "test.suite" : "datadog.smoke.TestFailed",
      "test.type" : "test",
      "test_session.name" : "mvn -B test"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_7},
      "_dd.profiling.enabled" : 0,
      "_dd.trace_span_attribute_schema" : 0,
      "process_id" : ${content_metrics_process_id_2},
      "test.source.end" : 12,
      "test.source.start" : 9
    },
    "name" : "junit4.test",
    "parent_id" : ${content_parent_id},
    "resource" : "datadog.smoke.TestFailed.test_failed",
    "service" : "test-maven-service",
    "span_id" : ${content_span_id_9},
    "start" : ${content_start_12},
    "test_module_id" : ${content_test_module_id},
    "test_session_id" : ${content_test_session_id},
    "test_suite_id" : ${content_test_suite_id},
    "trace_id" : ${content_trace_id_4}
  },
  "type" : "test",
  "version" : 2
}, {
  "content" : {
    "duration" : ${content_duration_13},
    "error" : 1,
    "meta" : {
      "_dd.p.tid" : ${content_meta__dd_p_tid_13},
      "_dd.test.is_user_provided_service" : "true",
      "_dd.tracer_host" : ${content_meta__dd_tracer_host},
      "ci.workspace_path" : ${content_meta_ci_workspace_path},
      "component" : "junit4",
      "env" : "integration-test",
      "error.stack" : ${content_meta_error_stack_7},
      "error.type" : "java.lang.AssertionError",
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
      "test.framework_version" : "4.13.2",
      "test.has_failed_all_retries" : "true",
      "test.is_retry" : "true",
      "test.module" : "Maven Smoke Tests Project maven-surefire-plugin default-test",
      "test.name" : "test_failed",
      "test.retry_reason" : "atr",
      "test.source.file" : "src/test/java/datadog/smoke/TestFailed.java",
      "test.source.method" : "test_failed()V",
      "test.status" : "fail",
      "test.suite" : "datadog.smoke.TestFailed",
      "test.type" : "test",
      "test_session.name" : "mvn -B test"
    },
    "metrics" : {
      "_dd.host.vcpu_count" : ${content_metrics__dd_host_vcpu_count_8},
      "_dd.profiling.enabled" : 0,
      "_dd.trace_span_attribute_schema" : 0,
      "process_id" : ${content_metrics_process_id_2},
      "test.source.end" : 12,
      "test.source.start" : 9
    },
    "name" : "junit4.test",
    "parent_id" : ${content_parent_id},
    "resource" : "datadog.smoke.TestFailed.test_failed",
    "service" : "test-maven-service",
    "span_id" : ${content_span_id_10},
    "start" : ${content_start_13},
    "test_module_id" : ${content_test_module_id},
    "test_session_id" : ${content_test_session_id},
    "test_suite_id" : ${content_test_suite_id},
    "trace_id" : ${content_trace_id_5}
  },
  "type" : "test",
  "version" : 2
} ]