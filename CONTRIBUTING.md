# Contributing Guidelines

## Notes

- **Before spending lots of time on something, ask for feedback on your idea
  first!**
- Please search issues and pull requests before adding something new to avoid
  duplicating efforts and conversations.
- To contact us use one of the following options:
  - [GitHub issues](https://github.com/LibrePCB/librepcb-doc/issues)
  - [Forum, chat and more](https://librepcb.org/discuss/)


## Getting Started

- Make sure you have a [GitHub account](https://github.com/signup/free).
- Fork the repository on GitHub.


## Making Changes

- Create a topic branch from where you want to base your work.
  - This is usually the `master` branch.
  - To quickly create a topic branch based on `master`:
    `git checkout -b my-contribution master`
  - Please avoid working directly on the `master` branch.
- Write documentation which follows our styleguide (explained below).
- Make commits of logical units.
  - Make sure your commit messages are in the
    [proper format](http://chris.beams.io/posts/git-commit/).
- Build and review the documentation to ensure it looks as expected (see
  [README.md](README.md) for instructions).


## Submitting Changes

- Push your changes to a topic branch in your fork of the repository.
- Submit a pull request to the repository in the LibrePCB organization.
- We will then check the pull request and give you feedback quickly.


## Style Guide

To ensure a consistent look&feel across the whole documentation (both source
and rendered output), please follow these rules:

### Source Files (`*.adoc`)

- UTF-8 encoding
- Unix line endings (LF)
- Line length max. 80 characters (except long URLs etc.)
- No trailing whitespaces
- No more than 1 empty line in succession (always separate sections and
  paragraphs with only 1 empty line)
- When adding new AsciiDoc files, don't forget to reference it from the
  corresponding `nav.adoc` file.

### Screenshots

- Use PNG as image format.
- Use lowercase filenames with dashes as separator (e.g. `my-screenshot.png`).
- Screenshots must be captured on a standard Ubuntu distribution (see
  [`README.md`](README.md) for instructions to set up a VM).
- Make sure the image background (everything outside the captured window, e.g.
  around the rounded corners) is transparent.
- Make sure there's no spacing (transparent borders) around the actual content.
- For full window screenshots, preferred sizes are 800x480 or 800x600.
- Always use the workspace [`./resources/workspace`](resources/workspace/) when
  taking screenshots.
- If the library elements or projects to be captured are not yet available
  in the mentioned workspace, please add them to the workspace by yourself.
- When creating new library elements or projects, always use "me" as author
  (instead of your real name).
- Use small window sizes to get screenshots filled with information instead of
  blank areas. The smaller, the better. A resolution of 1000x700 Pixels must
  not be exceeded.
- If reasonable, highlight the relevant information in screenshots with red
  boxes/circles/arrows.
- After taking screenshots, make a temporary commit (for backup reasons) and
  then run the script `./process_screenshots.sh` to automatically post-process
  the committed images. Then squash these commits if the result looks good.


## Additional Resources

- [General GitHub documentation](https://help.github.com/)
- [GitHub pull request documentation](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests)
