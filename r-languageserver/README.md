# r-languageserver

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/badouralix/r-languageserver?label=build&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/r-languageserver)
[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/r-languageserver?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/r-languageserver)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/r-languageserver?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/r-languageserver)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/r-languageserver?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/r-languageserver)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/r-languageserver?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/r-languageserver)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/badouralix/r-languageserver?logo=docker&logoColor=white)](https://microbadger.com/images/badouralix/r-languageserver)

This repository contains a **Dockerfile** installing [r-languageserver](https://github.com/REditorSupport/languageserver) on a handful of different distros.

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/r-languageserver/).

- [Usage](#usage)
- [Build](#build)
  - [Alpine](#alpine)
  - [Debian](#debian)
  - [Fedora](#fedora)
- [Missing dependencies](#missing-dependencies)
  - [Known package dependencies](#known-package-dependencies)
  - [build-essentials](#build-essentials)
  - [libcurl](#libcurl)
  - [libssl](#libssl)
  - [libxml2](#libxml2)
  - [Documentation](#documentation)
- [License](#license)

## Usage

```bash
docker run -it --rm badouralix/r-languageserver
```

## Build

### Alpine

```bash
cd alpine
dockerize r-languageserver:alpine
```

### Debian

```bash
cd debian
dockerize r-languageserver:debian
```

### Fedora

```bash
cd fedora
dockerize r-languageserver:fedora
```

## Missing dependencies

As installation happened on almost-raw OS, some hard dependencies were uncovered. All these log snippets come from the debian build.

### Known package dependencies

Upon install command, the script outputs its dependencies

```bash
$ Rscript -e 'install.packages("languageserver", repos="https://cloud.r-project.org/")'
Installing package into '/usr/local/lib/R/site-library'
(as 'lib' is unspecified)
also installing the dependencies 'prettyunits', 'sys', 'pkgbuild', 'askpass', 'ps', 'lazyeval', 'remotes', 'ellipsis', 'evaluate', 'pkgload', 'praise', 'curl', 'mime', 'openssl', 'highr', 'markdown', 'stringr', 'yaml', 'Rcpp', 'fansi', 'utf8', 'vctrs', 'glue', 'R.methodsS3', 'R.oo', 'R.utils', 'lifecycle', 'pkgconfig', 'processx', 'assertthat', 'crayon', 'rprojroot', 'rex', 'cyclocomp', 'testthat', 'digest', 'rstudioapi', 'httr', 'knitr', 'htmltools', 'pillar', 'base64enc', 'backports', 'cli', 'magrittr', 'purrr', 'R.cache', 'rematch2', 'rlang', 'tibble', 'withr', 'xfun', 'callr', 'collections', 'desc', 'fs', 'jsonlite', 'lintr', 'R6', 'repr', 'stringi', 'styler', 'xml2', 'xmlparsedata'
```

### build-essentials

The install scripts do not retrieve binary packages, but rather compile the packages.

Required compiling tools include `make`, `g++` and `gcc`.

### libcurl

```text
* installing *source* package ‘curl’ ...
** package ‘curl’ successfully unpacked and MD5 sums checked
** using staged installation
Using PKG_CFLAGS=
Using PKG_LIBS=-lcurl
------------------------- ANTICONF ERROR ---------------------------
Configuration failed because libcurl was not found. Try installing:
 * deb: libcurl4-openssl-dev (Debian, Ubuntu, etc)
 * rpm: libcurl-devel (Fedora, CentOS, RHEL)
 * csw: libcurl_dev (Solaris)
If libcurl is already installed, check that 'pkg-config' is in your
PATH and PKG_CONFIG_PATH contains a libcurl.pc file. If pkg-config
is unavailable you can set INCLUDE_DIR and LIB_DIR manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
--------------------------------------------------------------------
ERROR: configuration failed for package ‘curl’
* removing ‘/usr/lib/R/library/curl’
```

### libssl

```text
* installing *source* package 'openssl' ...
** package 'openssl' successfully unpacked and MD5 sums checked
Using PKG_CFLAGS=
------------------------- ANTICONF ERROR ---------------------------
Configuration failed because openssl was not found. Try installing:
 * deb: libssl-dev (Debian, Ubuntu, etc)
 * rpm: openssl-devel (Fedora, CentOS, RHEL)
 * csw: libssl_dev (Solaris)
 * brew: openssl@1.1 (Mac OSX)
If openssl is already installed, check that 'pkg-config' is in your
PATH and PKG_CONFIG_PATH contains a openssl.pc file. If pkg-config
is unavailable you can set INCLUDE_DIR and LIB_DIR manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
--------------------------------------------------------------------
ERROR: configuration failed for package 'openssl'
* removing '/usr/local/lib/R/site-library/openssl'
```

### libxml2

```text
* installing *source* package 'xml2' ...
** package 'xml2' successfully unpacked and MD5 sums checked
Using PKG_CFLAGS=
Using PKG_LIBS=-lxml2
------------------------- ANTICONF ERROR ---------------------------
Configuration failed because libxml-2.0 was not found. Try installing:
 * deb: libxml2-dev (Debian, Ubuntu, etc)
 * rpm: libxml2-devel (Fedora, CentOS, RHEL)
 * csw: libxml2_dev (Solaris)
If libxml-2.0 is already installed, check that 'pkg-config' is in your
PATH and PKG_CONFIG_PATH contains a libxml-2.0.pc file. If pkg-config
is unavailable you can set INCLUDE_DIR and LIB_DIR manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
--------------------------------------------------------------------
ERROR: configuration failed for package 'xml2'
* removing '/usr/local/lib/R/site-library/xml2'
```

### Documentation

This is not properly an error, but rather a warning

```text
** help
*** installing help indices
Warning in file.copy(file.path(R.home("doc"), "html", "R.css"), outman) :
  problem copying /usr/share/doc/R/html/R.css to /usr/lib/R/library/00LOCK-languageserver/00new/languageserver/html/R.css: No such file or directory
Warning in file.create(f.tg) :
  cannot create file '/usr/share/doc/R/html/packages.html', reason 'No such file or directory'
Warning in utils::make.packages.html(.Library, docdir = R.home("doc")) :
  cannot update HTML package index
```

## License

All contents licensed under the [WTFPL](https://github.com/badouralix/dockerfiles/blob/master/LICENSE)
