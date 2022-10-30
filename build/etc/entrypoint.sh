#
# this file can be sourced by pre- or post- init scripts
#
set -e
set -u
BASE_DEBUG=${BASE_DEBUG:=0}
test ${BASE_DEBUG} -ge 9 && set -x

export DEBIAN_FRONTEND=noninteractive
true
