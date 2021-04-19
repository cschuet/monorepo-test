workspace(name = "com_blaenk")

load("//bazel:setup.bzl", "blaenk_rule_repositories")

blaenk_rule_repositories()

load("//third_party:repositories.bzl", "blaenk_dependencies")

blaenk_dependencies()

load("//third_party/pip:install.bzl", third_party_pip_install = "pip_install")
third_party_pip_install()

load(
    "@io_bazel_rules_docker//repositories:repositories.bzl",
    container_repositories = "repositories",
)
container_repositories()

load(
    "@io_bazel_rules_docker//python:image.bzl",
    _py_image_repos = "repositories",
)

_py_image_repos()