# bookworm

![Pulls](https://img.shields.io/docker/pulls/mkovac/bookworm.svg)
![Stars](https://img.shields.io/docker/stars/mkovac/bookworm.svg)

The [Debian](https://debian.org/) [Bookworm](https://wiki.debian.org/DebianBookworm)
[container image](https://hub.docker.com/r/mkovac/bookworm/) with few handy
utilities, utf8 locales...

This image is built daily and in case of any security update, the list of
packages is updated, commited and this triggers update of docker-hub image
and all dependant images.

## Quick Usage

Run prebuilt:

    $ docker run --rm -ti mkovac/bookworm bash

Or you can clone & build, run `bash` to explore:

    $ git clone https://github.com/multicast/docker-bookworm
    $ cd docker-bookworm
    $ docker build -t bookworm .
    $ docker run --rm -ti bookworm bash

Since the image is intended to be used as base image, I suppose more common usage
would be in your own `Dockerfile` in the form:

    FROM mkovac/bookworm:latest
    ...

## Build-time options

You can `export` environment variables found in the following list:

  * `ftp_proxy`
  * `http_proxy`
  * `https_proxy`

The values for these variables will not end up in the resulting image.

## Run-time options

You can define environment variables via `--env` argument found in the following list:

  * `ftp_proxy`
  * `http_proxy`
  * `https_proxy`
  * `BASE_DEBUG`
      * zero to higher numbers - to get more and more verbose
  * `BASE_NOEXIT`
      * set to 1 not to exit on startup errors

The apt proxy configuration will use above variables.

Further customization of container startup can be done using script mounted
to `/etc/entrypoint.d/NN-your-script-name`, and it gets executed by default
entry point script. See [examples](build/etc/entrypoint.d).

# Packages

    Desired=Unknown/Install/Remove/Purge/Hold
    | Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
    |/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
    ||/ Name                      Version                           Architecture Description
    +++-=========================-=================================-============-========================================================================
    ii  apt                       2.5.4                             amd64        commandline package manager
    ii  apt-utils                 2.5.4                             amd64        package management related utility programs
    ii  base-files                12.3                              amd64        Debian base system miscellaneous files
    ii  base-passwd               3.6.1                             amd64        Debian base system master password and group files
    ii  bash                      5.2-2+b1                          amd64        GNU Bourne Again SHell
    ii  bsdutils                  1:2.38.1-4                        amd64        basic utilities from 4.4BSD-Lite
    ii  ca-certificates           20211016                          all          Common CA certificates
    ii  coreutils                 9.1-1                             amd64        GNU core utilities
    ii  curl                      7.86.0-2                          amd64        command line tool for transferring data with URL syntax
    ii  dash                      0.5.11+git20210903+057cd650a4ed-9 amd64        POSIX-compliant shell
    ii  debconf                   1.5.80                            all          Debian configuration management system
    ii  debian-archive-keyring    2021.1.1                          all          GnuPG archive keys of the Debian archive
    ii  debianutils               5.7-0.4                           amd64        Miscellaneous utilities specific to Debian
    ii  di                        4.51-1                            amd64        advanced df like disk information utility
    ii  diffutils                 1:3.8-1                           amd64        File comparison utilities
    ii  dpkg                      1.21.13                           amd64        Debian package management system
    ii  e2fsprogs                 1.46.6~rc1-1+b1                   amd64        ext2/ext3/ext4 file system utilities
    ii  etckeeper                 1.18.18-1.1                       all          store /etc in git, mercurial, brz or darcs
    ii  findutils                 4.9.0-3                           amd64        utilities for finding files--find, xargs
    ii  gcc-12-base:amd64         12.2.0-10                         amd64        GCC, the GNU Compiler Collection (base package)
    ii  git                       1:2.35.1-1                        amd64        fast, scalable, distributed revision control system
    ii  git-man                   1:2.35.1-1                        all          fast, scalable, distributed revision control system (manual pages)
    ii  gpgv                      2.2.40-1                          amd64        GNU privacy guard - signature verification tool
    ii  grep                      3.8-3                             amd64        GNU grep, egrep and fgrep
    ii  gzip                      1.12-1                            amd64        GNU compression utilities
    ii  hostname                  3.23                              amd64        utility to set/show the host name or domain name
    ii  init-system-helpers       1.65.2                            all          helper tools for all init systems
    ii  iproute2                  6.1.0-1                           amd64        networking and traffic control tools
    ii  iputils-ping              3:20221126-1                      amd64        Tools to test the reachability of network hosts
    ii  joe                       4.6-1+b1                          amd64        user friendly full screen text editor
    ii  less                      590-1                             amd64        pager program similar to more
    ii  libacl1:amd64             2.3.1-2                           amd64        access control list - shared library
    ii  libapt-pkg6.0:amd64       2.5.4                             amd64        package management runtime library
    ii  libattr1:amd64            1:2.5.1-3                         amd64        extended attribute handling - shared library
    ii  libaudit-common           1:3.0.7-1.1                       all          Dynamic library for security auditing - common files
    ii  libaudit1:amd64           1:3.0.7-1.1+b2                    amd64        Dynamic library for security auditing
    ii  libblkid1:amd64           2.38.1-4                          amd64        block device ID library
    ii  libbpf1:amd64             1:1.0.1-2                         amd64        eBPF helper library (shared library)
    ii  libbrotli1:amd64          1.0.9-2+b5                        amd64        library implementing brotli encoder and decoder (shared libraries)
    ii  libbsd0:amd64             0.11.7-1                          amd64        utility functions from BSD systems - shared library
    ii  libbz2-1.0:amd64          1.0.8-5+b1                        amd64        high-quality block-sorting file compressor library - runtime
    ii  libc-bin                  2.36-6                            amd64        GNU C Library: Binaries
    ii  libc-l10n                 2.36-6                            all          GNU C Library: localization files
    ii  libc6:amd64               2.36-6                            amd64        GNU C Library: Shared libraries
    ii  libcap-ng0:amd64          0.8.3-1+b2                        amd64        alternate POSIX capabilities library
    ii  libcap2:amd64             1:2.66-3                          amd64        POSIX 1003.1e capabilities (library)
    ii  libcap2-bin               1:2.66-3                          amd64        POSIX 1003.1e capabilities (utilities)
    ii  libcom-err2:amd64         1.46.6~rc1-1+b1                   amd64        common error description library
    ii  libcrypt1:amd64           1:4.4.33-1                        amd64        libcrypt shared library
    ii  libcurl3-gnutls:amd64     7.86.0-2                          amd64        easy-to-use client-side URL transfer library (GnuTLS flavour)
    ii  libcurl4:amd64            7.86.0-2                          amd64        easy-to-use client-side URL transfer library (OpenSSL flavour)
    ii  libdb5.3:amd64            5.3.28+dfsg1-0.10                 amd64        Berkeley v5.3 Database Libraries [runtime]
    ii  libdebconfclient0:amd64   0.265                             amd64        Debian Configuration Management System (C-implementation library)
    ii  libelf1:amd64             0.188-1                           amd64        library to read and write ELF files
    ii  liberror-perl             0.17029-2                         all          Perl module for error/exception handling in an OO-ish way
    ii  libexpat1:amd64           2.5.0-1                           amd64        XML parsing C library - runtime library
    ii  libext2fs2:amd64          1.46.6~rc1-1+b1                   amd64        ext2/ext3/ext4 file system libraries
    ii  libffi8:amd64             3.4.4-1                           amd64        Foreign Function Interface library runtime
    ii  libgcc-s1:amd64           12.2.0-10                         amd64        GCC support library
    ii  libgcrypt20:amd64         1.10.1-3                          amd64        LGPL Crypto library - runtime library
    ii  libgdbm-compat4:amd64     1.23-3                            amd64        GNU dbm database routines (legacy support runtime version) 
    ii  libgdbm6:amd64            1.23-3                            amd64        GNU dbm database routines (runtime version) 
    ii  libgmp10:amd64            2:6.2.1+dfsg1-1.1                 amd64        Multiprecision arithmetic library
    ii  libgnutls30:amd64         3.7.8-4                           amd64        GNU TLS library - main runtime library
    ii  libgpg-error0:amd64       1.46-1                            amd64        GnuPG development runtime library
    ii  libgssapi-krb5-2:amd64    1.20.1-1                          amd64        MIT Kerberos runtime libraries - krb5 GSS-API Mechanism
    ii  libhogweed6:amd64         3.8.1-2                           amd64        low level cryptographic library (public-key cryptos)
    ii  libidn2-0:amd64           2.3.3-1+b1                        amd64        Internationalized domain names (IDNA2008/TR46) library
    ii  libk5crypto3:amd64        1.20.1-1                          amd64        MIT Kerberos runtime libraries - Crypto Library
    ii  libkeyutils1:amd64        1.6.3-2                           amd64        Linux Key Management Utilities (library)
    ii  libkrb5-3:amd64           1.20.1-1                          amd64        MIT Kerberos runtime libraries
    ii  libkrb5support0:amd64     1.20.1-1                          amd64        MIT Kerberos runtime libraries - Support library
    ii  libldap-2.5-0:amd64       2.5.13+dfsg-2+b1                  amd64        OpenLDAP libraries
    ii  liblz4-1:amd64            1.9.4-1                           amd64        Fast LZ compression algorithm library - runtime
    ii  liblzma5:amd64            5.4.0-0.1                         amd64        XZ-format compression library
    ii  libmd0:amd64              1.0.4-2                           amd64        message digest functions from BSD systems - shared library
    ii  libmnl0:amd64             1.0.4-3                           amd64        minimalistic Netlink communication library
    ii  libmount1:amd64           2.38.1-4                          amd64        device mounting library
    ii  libncurses6:amd64         6.3+20220423-2                    amd64        shared libraries for terminal handling
    ii  libncursesw6:amd64        6.3+20220423-2                    amd64        shared libraries for terminal handling (wide character support)
    ii  libnettle8:amd64          3.8.1-2                           amd64        low level cryptographic library (symmetric and one-way cryptos)
    ii  libnewt0.52:amd64         0.52.23-1                         amd64        Not Erik's Windowing Toolkit - text mode windowing with slang
    ii  libnghttp2-14:amd64       1.51.0-1                          amd64        library implementing HTTP/2 protocol (shared library)
    ii  libp11-kit0:amd64         0.24.1-1                          amd64        library for loading and coordinating access to PKCS#11 modules - runtime
    ii  libpam-modules:amd64      1.5.2-5                           amd64        Pluggable Authentication Modules for PAM
    ii  libpam-modules-bin        1.5.2-5                           amd64        Pluggable Authentication Modules for PAM - helper binaries
    ii  libpam-runtime            1.5.2-5                           all          Runtime support for the PAM library
    ii  libpam0g:amd64            1.5.2-5                           amd64        Pluggable Authentication Modules library
    ii  libpcre2-8-0:amd64        10.40-3                           amd64        New Perl Compatible Regular Expression Library- 8 bit runtime files
    ii  libperl5.36:amd64         5.36.0-6                          amd64        shared Perl library
    ii  libpopt0:amd64            1.19+dfsg-1                       amd64        lib for parsing cmdline parameters
    ii  libproc2-0:amd64          2:4.0.2-3                         amd64        library for accessing process information from /proc
    ii  libpsl5:amd64             0.21.0-1.2                        amd64        Library for Public Suffix List (shared libraries)
    ii  librtmp1:amd64            2.4+20151223.gitfa8646d.1-2+b2    amd64        toolkit for RTMP streams (shared library)
    ii  libsasl2-2:amd64          2.1.28+dfsg-10                    amd64        Cyrus SASL - authentication abstraction library
    ii  libsasl2-modules-db:amd64 2.1.28+dfsg-10                    amd64        Cyrus SASL - pluggable authentication modules (DB)
    ii  libseccomp2:amd64         2.5.4-1+b2                        amd64        high level interface to Linux seccomp filter
    ii  libselinux1:amd64         3.4-1+b4                          amd64        SELinux runtime shared libraries
    ii  libsemanage-common        3.4-1                             all          Common files for SELinux policy management libraries
    ii  libsemanage2:amd64        3.4-1+b4                          amd64        SELinux policy management library
    ii  libsepol2:amd64           3.4-2                             amd64        SELinux library for manipulating binary security policies
    ii  libslang2:amd64           2.3.3-2                           amd64        S-Lang programming library - runtime version
    ii  libsmartcols1:amd64       2.38.1-4                          amd64        smart column output alignment library
    ii  libss2:amd64              1.46.6~rc1-1+b1                   amd64        command-line interface parsing library
    ii  libssh2-1:amd64           1.10.0-3+b1                       amd64        SSH2 client-side library
    ii  libssl3:amd64             3.0.7-1                           amd64        Secure Sockets Layer toolkit - shared libraries
    ii  libstdc++6:amd64          12.2.0-10                         amd64        GNU Standard C++ Library v3
    ii  libsystemd0:amd64         252.4-1                           amd64        systemd utility library
    ii  libtasn1-6:amd64          4.19.0-2                          amd64        Manage ASN.1 structures (runtime)
    ii  libtinfo6:amd64           6.3+20220423-2                    amd64        shared low-level terminfo library for terminal handling
    ii  libtirpc-common           1.3.3+ds-1                        all          transport-independent RPC library - common files
    ii  libtirpc3:amd64           1.3.3+ds-1                        amd64        transport-independent RPC library
    ii  libudev1:amd64            252.4-1                           amd64        libudev shared library
    ii  libunistring2:amd64       1.0-2                             amd64        Unicode string library for C
    ii  libuuid1:amd64            2.38.1-4                          amd64        Universally Unique ID library
    ii  libxtables12:amd64        1.8.8-1                           amd64        netfilter xtables library
    ii  libxxhash0:amd64          0.8.1-1                           amd64        shared library for xxhash
    ii  libzstd1:amd64            1.5.2+dfsg-1                      amd64        fast lossless compression algorithm
    ii  localepurge               0.7.3.10                          all          reclaim disk space by removing unneeded localizations
    ii  locales                   2.36-6                            all          GNU C Library: National Language (locale) data [support]
    ii  login                     1:4.13+dfsg1-1                    amd64        system login tools
    ii  logsave                   1.46.6~rc1-1+b1                   amd64        save the output of a command in a log file
    ii  mawk                      1.3.4.20200120-3.1                amd64        Pattern scanning and text processing language
    ii  mount                     2.38.1-4                          amd64        tools for mounting and manipulating filesystems
    ii  ncurses-base              6.3+20220423-2                    all          basic terminal type definitions
    ii  ncurses-bin               6.3+20220423-2                    amd64        terminal-related programs and man pages
    ii  net-tools                 2.10-0.1                          amd64        NET-3 networking toolkit
    ii  openssl                   3.0.7-1                           amd64        Secure Sockets Layer toolkit - cryptographic utility
    ii  passwd                    1:4.13+dfsg1-1                    amd64        change and administer password and group data
    ii  perl                      5.36.0-6                          amd64        Larry Wall's Practical Extraction and Report Language
    ii  perl-base                 5.36.0-6                          amd64        minimal Perl system
    ii  perl-modules-5.36         5.36.0-6                          all          Core Perl modules
    ii  procps                    2:4.0.2-3                         amd64        /proc file system utilities
    ii  psmisc                    23.6-1                            amd64        utilities that use the proc file system
    ii  sed                       4.8-1                             amd64        GNU stream editor for filtering/transforming text
    ii  sensible-utils            0.0.17                            all          Utilities for sensible alternative selection
    ii  sysvinit-utils            3.06-2                            amd64        System-V-like utilities
    ii  tar                       1.34+dfsg-1                       amd64        GNU version of the tar archiving utility
    ii  tzdata                    2022f-1                           all          time zone and daylight-saving time data
    ii  ucf                       3.0043                            all          Update Configuration File(s): preserve user changes to config files
    ii  unzip                     6.0-27                            amd64        De-archiver for .zip files
    ii  usr-is-merged             35                                all          Transitional package to assert a merged-/usr system
    ii  util-linux                2.38.1-4                          amd64        miscellaneous system utilities
    ii  util-linux-extra          2.38.1-4                          amd64        interactive login tools
    ii  whiptail                  0.52.23-1                         amd64        Displays user-friendly dialog boxes from shell scripts
    ii  xtail                     2.1-8                             amd64        like "tail -f", but works on truncated files, directories, more
    ii  zlib1g:amd64              1:1.2.13.dfsg-1                   amd64        compression library - runtime
