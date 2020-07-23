#!/usr/bin/env bash

export LC_ALL=C
TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

BITCOINEXODUSD=${BITCOINEXODUSD:-$BINDIR/bitcoinexodusd}
BITCOINEXODUSCLI=${BITCOINEXODUSCLI:-$BINDIR/bitcoinexodus-cli}
BITCOINEXODUSTX=${BITCOINEXODUSTX:-$BINDIR/bitcoinexodus-tx}
BITCOINEXODUSQT=${BITCOINEXODUSQT:-$BINDIR/qt/bitcoinexodus-qt}

[ ! -x $BITCOINEXODUSD ] && echo "$BITCOINEXODUSD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
BEXVER=($($BITCOINEXODUSCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for bitcoinexodusd if --version-string is not set,
# but has different outcomes for bitcoinexodus-qt and bitcoinexodus-cli.
echo "[COPYRIGHT]" > footer.h2m
$BITCOINEXODUSD --version | sed -n '1!p' >> footer.h2m

for cmd in $BITCOINEXODUSD $BITCOINEXODUSCLI $BITCOINEXODUSTX $BITCOINEXODUSQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${BEXVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${BEXVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
