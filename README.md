# LibrePCB Documentation

This repository contains the source for the [LibrePCB](http://librepcb.org)
documentation hosted at [docs.librepcb.org](https://docs.librepcb.org).

## Toolchain

The documentation is written in
[Asciidoc](https://asciidoctor.org/docs/what-is-asciidoc/)
and built with [Antora](https://antora.org/).

Unfortunately the build setup is not trivial since it is integrated into
[librepcb-website](https://github.com/LibrePCB/librepcb-website).

Therefore we created a Docker image containing the whole toolchain. On Linux,
just make sure Docker is installed. Then building the documentation is as
simple as calling this script:

    ./build.sh

Unfortunately on other operating systems it is much more complicated. However,
having the toolchain available locally is not mandatory. A decent text editor
(ideally with AsciiDoc syntax highligting and live preview) should be enough
to write some documentation.

## Contributing

Contributions are very welcome! See our [Contributing Guide](CONTRIBUTING.md)
for details. We're looking forward for pull requests :)

## Links

- [AsciiDoc Syntax Quick Reference](https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/)
- [Asciidoc Writer's Guide](https://asciidoctor.org/docs/asciidoc-writers-guide/)
- [Antora Documentation](https://docs.antora.org/antora/latest/)
- [Asciidoctor User Manual](https://asciidoctor.org/docs/user-manual/)
- [AsciidocFX](https://www.asciidocfx.com/) (Asciidoc editor with live preview)

## License

This documentation is published under the
[CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/legalcode)
license.
