BitcoinExodus Core
=============

Setup
---------------------
BitcoinExodus Core is the original BitcoinExodus client and it builds the backbone of the network. It downloads and, by default, stores the entire history of BitcoinExodus transactions (which is currently more than 100 GBs); depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download BitcoinExodus Core, visit [bitcoinexoduscore.org](https://bitcoinexoduscore.org/en/releases/).

Running
---------------------
The following are some helpful notes on how to run BitcoinExodus Core on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/bitcoinexodus-qt` (GUI) or
- `bin/bitcoinexodusd` (headless)

### Windows

Unpack the files into a directory, and then run bitcoinexodus-qt.exe.

### macOS

Drag BitcoinExodus Core to your applications folder, and then run BitcoinExodus Core.

### Need Help?

* See the documentation at the [BitcoinExodus Wiki](https://en.bitcoinexodus.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#bitcoinexodus](http://webchat.freenode.net?channels=bitcoinexodus) on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net?channels=bitcoinexodus).
* Ask for help on the [BitcoinExodusTalk](https://bitcoinexodustalk.org/) forums, in the [Technical Support board](https://bitcoinexodustalk.org/index.php?board=4.0).

Building
---------------------
The following are developer notes on how to build BitcoinExodus Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The BitcoinExodus repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://dev.visucore.com/bitcoinexodus/doxygen/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [Travis CI](travis-ci.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [BitcoinExodusTalk](https://bitcoinexodustalk.org/) forums, in the [Development & Technical Discussion board](https://bitcoinexodustalk.org/index.php?board=6.0).
* Discuss project-specific development on #bitcoinexodus-core-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=bitcoinexodus-core-dev).
* Discuss general BitcoinExodus development on #bitcoinexodus-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=bitcoinexodus-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](https://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.
