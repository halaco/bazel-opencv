load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repository():
    http_archive(
        name = "org_opencv",
        url = "https://github.com/opencv/opencv/archive/refs/tags/4.8.1.tar.gz",
        build_file_content = """filegroup(name = "all", srcs = glob(["**"]), visibility = ["//visibility:public"])""",
        strip_prefix = "opencv-4.8.1",
        sha256 = "62f650467a60a38794d681ae7e66e3e8cfba38f445e0bf87867e2f2cdc8be9d5",
    )
