#!/bin/sh

# store filename and extension in local vars
BASENAME="$1"
EXTENSION="${BASENAME##*.}"

[ "${BASENAME}" = "${EXTENSION}" ] && EXTENSION=txt
[ -z "${EXTENSION}" ] && EXTENSION=txt

# map Makefile and Makefile.* to .mk
[ "${BASENAME%%.*}" = "Makefile" ] && EXTENSION=mk

# highlight versions 2 and 3 have different commandline options. Specifically,
# the -X option that is used for version 2 is replaced by the -O xhtml option
# for version 3.
#
# Version 2 can be found (for example) on EPEL 5, while version 3 can be
# found (for example) on EPEL 6.
#
# This is for version 2
# exec highlight --force -f -I -X -S "$EXTENSION" 2>/dev/null

# This is for version 3
exec highlight --force -f -I -O xhtml -S "$EXTENSION" 2>/dev/null
