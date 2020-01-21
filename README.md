# LibrePCB Documentation

[![Travis Build Status](https://travis-ci.org/LibrePCB/librepcb-doc.svg?branch=master)](https://travis-ci.org/LibrePCB/librepcb-doc)

This repository contains the source for the [LibrePCB](http://librepcb.org)
documentation hosted at [docs.librepcb.org](https://docs.librepcb.org).

- HTML output of `master`: https://docs.librepcb.org
- PDF output of `master`: [librepcb-user-manual-nightly.pdf](https://download.librepcb.org/nightly_builds/master/librepcb-user-manual-nightly.pdf)
- HTML output of other branches: https://docs.librepcb.org/_branches/
- PDF output of other branches: https://download.librepcb.org/nightly_builds/

## Requirements

The documentation is written in [Asciidoc](https://asciidoctor.org/docs/what-is-asciidoc/)
and built with [Asciidoctor](https://asciidoctor.org/) and [Hugo](https://gohugo.io/).

On Linux the required Ruby gems can be installed with following commands:

    gem install asciidoctor pygments.rb rouge
    gem install asciidoctor-pdf --pre

Installation of Hugo varies based on the Linux distribution. You can check for
specific instructions in [Hugo's installation docs](https://gohugo.io/getting-started/installing/#linux).

On Mac you can use [homebrew](https://brew.sh/) and install gems in your user
folder:

    brew install asciidoctor hugo
    gem install --user-install pygments.rb rouge

This will keep your installation more resilient to OS X upgrades.

## Building

Inside the root of your Git repository, you can run this:

    hugo

When the process finishes, the result will be available inside the `public`
folder inside your Git workspace. Then, you can open the `index.html` file in your browser.

## Contributing

Contributions are very welcome! See our [Contributing Guide](CONTRIBUTING.md)
for details. We're looking forward for pull requests :)

## Links

- [AsciiDoc Syntax Quick Reference](https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/)
- [Asciidoc Writer's Guide](https://asciidoctor.org/docs/asciidoc-writers-guide/)
- [Asciidoctor User Manual](https://asciidoctor.org/docs/user-manual/)
- [AsciidocFX](https://www.asciidocfx.com/) (Asciidoc editor with live preview)

## License

This documentation is published under the
[CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/legalcode)
license.
