load("@rules_python//python:defs.bzl", "py_binary")
load("@python_deps//:requirements.bzl", "requirement")
load("@io_bazel_rules_docker//python:image.bzl", "py_image")

py_test(
    name = "test",
    srcs = ["test.py"],
    deps = [
        requirement("numpy"),
    ],
)

py_image(
    name = "py_image",
    srcs = ["app.py"],
    main = "app.py",
    deps = ["//common_lib:lib"],
)
