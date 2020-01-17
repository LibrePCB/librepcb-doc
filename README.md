# LibrePCB Documentation

[![Travis Build Status](https://travis-ci.org/LibrePCB/librepcb-doc.svg?branch=master)](https://travis-ci.org/LibrePCB/librepcb-doc)

This repository contains the source for the [LibrePCB](http://librepcb.org)
documentation hosted at [docs.librepcb.org](https://docs.librepcb.org).

## Requirements

The documentation is written in [Asciidoc](https://asciidoctor.org/docs/what-is-asciidoc/)
and built with [Antora](https://antora.org/).

You need [Node.js](https://nodejs.org) to build this package. In Linux, it
should be available in your package manager. Windows and Mac users can install
it using the package from their website (default installation options will
suffice).

## Building

Using a terminal (or `cmd` for Windows), after cloning and changing to the
project folder, you can run these commands:

    npm ci            # Downloads required dependencies inside the project dir
    npm run build     # Builds the bundle

Then, you can check the result by opening `artifacts/librepcb-doc/index.html`
in your browser.

## Contributing

Contributions are very welcome! See our [Contributing Guide](CONTRIBUTING.md)
for details. We're looking forward for pull requests :)

## Links

- [AsciiDoc Syntax Quick Reference](https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/)
- [Asciidoc Writer's Guide](https://asciidoctor.org/docs/asciidoc-writers-guide/)
- [Asciidoctor User Manual](https://asciidoctor.org/docs/user-manual/)
- [AsciidocFX](https://www.asciidocfx.com/) (Asciidoc editor with live preview)
- [Antora User Manual](https://docs.antora.org) (Documentation for the static
site builder)

## License

This documentation is published under the
[CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/legalcode)
license.
