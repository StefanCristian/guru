# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit unpacker xdg

DESCRIPTION="A beautiful, fast and fully open source mail client for Mac, Windows and Linux"
HOMEPAGE="https://getmailspring.com/"
SRC_URI="https://github.com/Foundry376/Mailspring/releases/download/${PV}/mailspring-${PV}-amd64.deb"
S="${WORKDIR}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	app-accessibility/at-spi2-atk:2
	app-accessibility/at-spi2-core:2
	app-crypt/libsecret
	app-crypt/mit-krb5
	dev-libs/atk
	dev-libs/expat
	dev-libs/glib:2
	dev-libs/nspr
	dev-libs/nss
	dev-libs/openssl-compat:1.0.0
	gnome-base/gvfs
	media-libs/alsa-lib
	net-print/cups
	sys-apps/dbus
	sys-devel/libtool
	sys-libs/db:5.3
	x11-libs/gtk+:3
	x11-libs/libxkbfile
	x11-libs/libXrandr
	x11-libs/libXrender
	x11-libs/libXScrnSaver
	x11-libs/libXtst
	x11-libs/pango
	x11-misc/xdg-utils
    x11-libs/cairo
    x11-libs/gdk-pixbuf:2
    x11-libs/gtk+:3
    x11-libs/libX11
    x11-libs/libxcb
    x11-libs/libXcomposite
    x11-libs/libXcursor
    x11-libs/libXdamage
    x11-libs/libXext
    x11-libs/libXfixes
    x11-libs/libXi
"

QA_PREBUILT="*"

src_unpack(){
	unpack_deb ${A}
}

src_install(){
	cp -R "${S}"/* "${D}" || die "Installing binary files failed"
	mv "${D}/usr/share/doc/mailspring" "${D}/usr/share/doc/${PF}" || die
	mv "${D}/usr/share/appdata" "${D}/usr/share/metainfo" || die
}
