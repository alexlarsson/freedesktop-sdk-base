FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"
SRC_URI += "\
        file://usercustomize.py \
        "
do_install_append() {
        install -m 0755 ${WORKDIR}/usercustomize.py ${D}${libdir}/python3.5/usercustomize.py
}
