#!/usr/bin/env bash

cd "$(dirname $0)/desktop"

if grep ^UBUNTU /etc/os-release &>/dev/null
then
	GCC_MACHINE=$(gcc -dumpmachine)
	LIBWX_GTK2_WEBVIEW=$(find /usr/lib/${GCC_MACHINE}/ -type f -iname "libwx_gtk2*webview*")
	env LD_PRELOAD=${LIBWX_GTK2_WEBVIEW} python2.7 2048App
else
	env python2.7 2048App
fi

