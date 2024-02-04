load(":repository.bzl", "repository")

def _opencv_repository_impl(_ctx):
    repository()

opencv_repository = module_extension(
    implementation = _opencv_repository_impl,
)
