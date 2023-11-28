#!/bin/bash
# SPDX-FileCopyrightText: 2023 Kou Suzuki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

out=$(seq 5| ./plus)
Expected_out=15.0 5 3.0
 "${out}" = "${Expected_out}" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $[res]

