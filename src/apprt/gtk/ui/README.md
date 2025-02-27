# GTK UI files

This directory is for storing GTK resource definitions. With one exception, the
files should be be in the Blueprint markup language.

Resource files should be stored in directories that represent the minimum
Adwaita version needed to use that resource. Resource files should also be
formatted using `blueprint-compiler format` as well to ensure consistency.

The one exception to files being in Blueprint markup language is when Adwaita
features are used that the `blueprint-compiler` on a supported platform does not
compile. For example, Debian 12 includes Adwaita 1.2 and `blueprint-compiler`
0.6.0. Adwaita 1.2 includes support for `MessageDialog` but `blueprint-compiler`
0.6.0 does not. In cases like that the Blueprint markup should be compiled on a
platform that provides a new enough `blueprint-compiler` and the resulting `.ui`
file should be committed to the Ghostty source code. Care should be taken that
the `.blp` file and the `.ui` file remain in sync.

In all other cases only the `.blp` should be committed to the Ghostty source
code. The build process will use `blueprint-compiler` to generate the `.ui`
files necessary at runtime.
