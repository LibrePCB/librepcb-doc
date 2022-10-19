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

## Virtual Machine For Screenshots

To ensure a consistent look&feel across all screenshots, please use a
virtual machine (e.g. VirtualBox) and run LibrePCB within it. Set up
the VM as following:

- Operating system: Ubuntu 22.04 (Choose "Minimal installation")
- Locale: English (`en_US`)
- Computer name: librepcb
- Full user name: Me
- Username: user

After the installation:

- Set the VM screen resolution to 1024x768 to ensure no screenshot is larger
  than this.
- On the bottom right of the login screen, switch from Wayland to X11 since
  most screenshot capture tools do not work properly on Wayland.
- Run `sudo apt install shutter` to install Shutter for capturing screenshots.
- In the Shutter settings, enable rounded corners.

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
