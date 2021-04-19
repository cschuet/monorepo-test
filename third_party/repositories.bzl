load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@com_blaenk//bazel:setup.bzl", "maybe")

def _rule_dependencies():
    pass

def _proto_dependencies():
    pass

def _cc_dependencies():
    pass

def _java_dependencies():
    pass

def _go_dependencies():
    pass

def _python_dependencies():
    pass

def _bindings():
    pass

def blaenk_dependencies():
    """Defines external repositories for Blaenk dependencies.

    Call this once in your WORKSPACE file to load all @com_blaenk dependencies.
    """
    _proto_dependencies()
    _cc_dependencies()
    _go_dependencies()
    _java_dependencies()
    _python_dependencies()
    _bindings()
    _rule_dependencies()

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)
