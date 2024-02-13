
def _cmake_template_impl(ctx):
    src = ctx.file.src
    values = ctx.attr.values
    output = ctx.actions.declare_file(ctx.attr.out)

    ctx.actions.expand_template(
        template = src,
        output = output,
        substitutions = values,
    )

    return [
        DefaultInfo(files = depset([output])),
    ]


cmake_template = rule(
    implementation = _cmake_template_impl,
    attrs = {
        "src": attr.label(
            allow_single_file = True,
            doc = "The source file for the cmake template",
        ),
        "out": attr.string(),
        "values": attr.string_dict(),
    },
)
