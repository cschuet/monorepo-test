load("@rules_python//python:pip.bzl", _pip_install = "pip_install")

def pip_install():
    _pip_install(
        name = "python_deps",
        requirements = "//third_party/pip:requirements.txt",
    )
