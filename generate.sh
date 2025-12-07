#!/bin/bash

SRCDIR="files"
DSTDIR="contents"
LANGFULL=$1 #EUes, EUfr, EUit, EUen
LANGSHORT=$2 #es, fr, it, en-GB

#Remove old files
rm -rf $DSTDIR

#0100000000000801 Message strings for Support Error Codes.
#Special case: directories with uncompressed text files
mkdir -p $DSTDIR/0100000000000801_desactivat/romfs/ && cp -R $SRCDIR/error_codes/* "$_"

cd $DSTDIR/0100000000000801_desactivat/romfs
find . -iname "*" | rename -v "s/es_/$LANGSHORT\_/g"
cd ../../../

#0100000000000803 Browser "shareddata:/".
#Special case: not a compressed file!
mkdir -p $DSTDIR/0100000000000803/romfs/message/$LANGFULL/ && cp $SRCDIR/msbt/Cruiser.msbt "$_"

#0100000000000804 HTML resources
#Special case: HTML file
mkdir -p $DSTDIR/0100000000000804/romfs/safe.htdocs/html/$LANGFULL/ && cp $SRCDIR/safety_html/index.html "$_"

#010000000000080B Offline news for the News applet.
mkdir -p $DSTDIR/010000000000080B/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/localNews.msbt.szs "$_"

#010000000000080C EULA
mkdir -p $DSTDIR/010000000000080C/romfs/$LANGFULL/ && cp $SRCDIR/szs/Eula.msbt.szs "$_"

#010000000000081D Errdisp strings
#Special case: uncompressed text files
mkdir -p $DSTDIR/010000000000081D/romfs/$LANGSHORT/ && cp -R $SRCDIR/error_display/* "$_"

#0100000000001000 "qlaunch" 'System applet'
mkdir -p $DSTDIR/0100000000001000/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/cldr.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001000/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/common_$LANGFULL.msbt.szs $DSTDIR/0100000000001000/romfs/message/$LANGFULL/common.msbt.szs
mkdir -p $DSTDIR/0100000000001000/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/dataErase.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001000/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/dataTransfer.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001000/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/flaunch.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001000/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/gift.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001000/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/interrupt.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001000/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/migration.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001000/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/notification.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001000/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/option.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001000/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/qlaunch.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001000/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/setting.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001000/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/splay.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001000/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/vgc.msbt.szs "$_"

#0100000000001001 "auth" applet
mkdir -p $DSTDIR/0100000000001001/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/auth.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001001/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/common_$LANGFULL.msbt.szs $DSTDIR/0100000000001001/romfs/message/$LANGFULL/common.msbt.szs

#0100000000001002 "cabinet" applet
mkdir -p $DSTDIR/0100000000001002/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/cabinet.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001002/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/common_$LANGFULL.msbt.szs $DSTDIR/0100000000001002/romfs/message/$LANGFULL/common.msbt.szs

#0100000000001003 "controller" applet
mkdir -p $DSTDIR/0100000000001003/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/button.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001003/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/common_$LANGFULL.msbt.szs $DSTDIR/0100000000001003/romfs/message/$LANGFULL/common.msbt.szs
mkdir -p $DSTDIR/0100000000001003/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/controller.msbt.szs "$_"

#0100000000001004 "dataErase" applet
mkdir -p $DSTDIR/0100000000001004/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/common_$LANGFULL.msbt.szs $DSTDIR/0100000000001004/romfs/message/$LANGFULL/common.msbt.szs
mkdir -p $DSTDIR/0100000000001004/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/dataErase.msbt.szs "$_"

#0100000000001005 "error" applet
mkdir -p $DSTDIR/0100000000001005/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/common_$LANGFULL.msbt.szs $DSTDIR/0100000000001005/romfs/message/$LANGFULL/common.msbt.szs
mkdir -p $DSTDIR/0100000000001005/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/error_$LANGFULL.msbt.szs $DSTDIR/0100000000001005/romfs/message/$LANGFULL/error.msbt.szs

#0100000000001006 "netConnect" applet
mkdir -p $DSTDIR/0100000000001006/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/common_$LANGFULL.msbt.szs $DSTDIR/0100000000001006/romfs/message/$LANGFULL/common.msbt.szs
mkdir -p $DSTDIR/0100000000001006/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/netConnect.msbt.szs "$_"

#0100000000001007 "playerSelect" applet
mkdir -p $DSTDIR/0100000000001007/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/common_$LANGFULL.msbt.szs $DSTDIR/0100000000001007/romfs/message/$LANGFULL/common.msbt.szs
mkdir -p $DSTDIR/0100000000001007/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/playerSelect.msbt.szs "$_"

#0100000000001008 "swkbd" applet
mkdir -p $DSTDIR/0100000000001008/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/common_$LANGFULL.msbt.szs $DSTDIR/0100000000001008/romfs/message/$LANGFULL/common.msbt.szs
mkdir -p $DSTDIR/0100000000001008/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/swkbd.msbt.szs "$_"

#0100000000001009 "miiEdit" sysapplet
#Special case: not a compressed file!
mkdir -p $DSTDIR/0100000000001009/romfs/message/$LANGFULL/ && cp $SRCDIR/msbt/MiiEditN.msbt "$_"

#010000000000100C "overlayDisp" Overlay applet
mkdir -p $DSTDIR/010000000000100C/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/common_$LANGFULL.msbt.szs $DSTDIR/010000000000100C/romfs/message/$LANGFULL/common.msbt.szs
mkdir -p $DSTDIR/010000000000100C/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/overlayDisp.msbt.szs "$_"

#010000000000100D "photoViewer" sysapplet
mkdir -p $DSTDIR/010000000000100D/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/common_$LANGFULL.msbt.szs $DSTDIR/010000000000100D/romfs/message/$LANGFULL/common.msbt.szs
mkdir -p $DSTDIR/010000000000100D/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/photoViewer.msbt.szs "$_"

#0100000000001012 "starter" sysapplet
mkdir -p $DSTDIR/0100000000001012/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/cldr.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001012/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/common_$LANGFULL.msbt.szs $DSTDIR/0100000000001012/romfs/message/$LANGFULL/common.msbt.szs
mkdir -p $DSTDIR/0100000000001012/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/setting.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001012/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/starter_$LANGFULL.msbt.szs $DSTDIR/0100000000001012/romfs/message/$LANGFULL/starter.msbt.szs

#0100000000001013 "myPage" sysapplet
mkdir -p $DSTDIR/0100000000001013/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/common_$LANGFULL.msbt.szs $DSTDIR/0100000000001013/romfs/message/$LANGFULL/common.msbt.szs
mkdir -p $DSTDIR/0100000000001013/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/myPage.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001013/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/setting.msbt.szs "$_"

#0100000000001015 "maintenance" sysapplet
mkdir -p $DSTDIR/0100000000001015/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/common_$LANGFULL.msbt.szs $DSTDIR/0100000000001015/romfs/message/$LANGFULL/common.msbt.szs
mkdir -p $DSTDIR/0100000000001015/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/maintenance.msbt.szs "$_"
mkdir -p $DSTDIR/0100000000001015/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/setting.msbt.szs "$_"

#0100000000001048 "splay" sysapplet
mkdir -p $DSTDIR/0100000000001048/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/common_$LANGFULL.msbt.szs $DSTDIR/0100000000001048/romfs/message/$LANGFULL/common.msbt.szs
mkdir -p $DSTDIR/0100000000001048/romfs/message/$LANGFULL/ && cp $SRCDIR/szs/splay.msbt.szs "$_"

echo "Done!"

exit 0
