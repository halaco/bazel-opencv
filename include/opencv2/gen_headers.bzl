load("//:variables.bzl", "OPENCV_MOD_LIST")
load("//rules/cmake_template:defs.bzl", "cmake_template")

def gen_headers(name, **kwargs):

    module_definitions = ""
    for moudle in OPENCV_MOD_LIST:
        module_definitions += "#define HAVE_" + moudle.toupper() + "\n"

    print(module_definitions)

    cmake_template(
        name = name,
        src = "@org_opencv//:cmake/templates/opencv_modules.hpp.in",
        out = "opencv_modules.hpp",
        values = {
            "@OPENCV_MODULE_DEFINITIONS_CONFIGMAKE@": module_definitions,
        },
        **kwargs,
    )
