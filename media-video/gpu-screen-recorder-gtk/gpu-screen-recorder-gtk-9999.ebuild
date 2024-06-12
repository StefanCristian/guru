EAPI=8

inherit meson git-r3

EGIT_REPO_URI="https://repo.dec05eba.com/gpu-screen-recorder-gtk"

DESCRIPTION="GTK frontend for gpu-screen-recorder."
HOMEPAGE="https://git.dec05eba.com/gpu-screen-recorder-gtk/about"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm64"

DEPEND="
    x11-libs/gtk+:3
    dev-libs/libayatana-appindicator
    media-video/gpu-screen-recorder
"
RDEPEND="${DEPEND}"
BDEPEND="${DEPEND}"

src_configure() {
	meson_src_configure
}

src_install() {
	meson_src_install
}
