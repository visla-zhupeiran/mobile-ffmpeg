#./ios.sh --disable-armv7 --disable-armv7s --disable-arm64e --disable-i386 --disable-x86-64-mac-catalyst  --enable-openh264 --enable-fontconfig --enable-freetype --enable-fribidi --enable-videotoolbox --enable-avfoundation
DIR=/Users/vislaniap/Code/playground/mobile-ffmpeg/prebuilt/ios-x86_64/ffmpeg/lib/
SHARE_DIR=./out/x86_64/lib/
rm -f ${SHARE_DIR}libavcodec.dylib
cp ${DIR}libavcodec.58.dylib ${SHARE_DIR}libavcodec.dylib
install_name_tool -id "@rpath/libavcodec.dylib" ${SHARE_DIR}libavcodec.dylib
install_name_tool -change ${DIR}libswresample.3.dylib "@rpath/libswresample.dylib" ${SHARE_DIR}libavcodec.dylib
install_name_tool -change ${DIR}libavutil.56.dylib "@rpath/libavutil.dylib" ${SHARE_DIR}libavcodec.dylib

rm -f ${SHARE_DIR}libavformat.dylib
cp ${DIR}libavformat.58.dylib ${SHARE_DIR}libavformat.dylib
install_name_tool -id "@rpath/libavformat.dylib" ${SHARE_DIR}libavformat.dylib
install_name_tool -change ${DIR}libavcodec.58.dylib "@rpath/libavcodec.dylib" ${SHARE_DIR}libavformat.dylib
install_name_tool -change ${DIR}libswresample.3.dylib "@rpath/libswresample.dylib" ${SHARE_DIR}libavformat.dylib
install_name_tool -change ${DIR}libavutil.56.dylib "@rpath/libavutil.dylib" ${SHARE_DIR}libavformat.dylib


rm -f ${SHARE_DIR}libavfilter.dylib
cp ${DIR}libavfilter.7.dylib ${SHARE_DIR}libavfilter.dylib
install_name_tool -id "@rpath/libavfilter.dylib" ${SHARE_DIR}libavfilter.dylib
install_name_tool -change ${DIR}libswscale.5.dylib "@rpath/libswscale.dylib" ${SHARE_DIR}libavfilter.dylib
install_name_tool -change ${DIR}libavformat.58.dylib "@rpath/libavformat.dylib" ${SHARE_DIR}libavfilter.dylib
install_name_tool -change ${DIR}libavcodec.58.dylib "@rpath/libavcodec.dylib" ${SHARE_DIR}libavfilter.dylib
install_name_tool -change ${DIR}libswresample.3.dylib "@rpath/libswresample.dylib" ${SHARE_DIR}libavfilter.dylib
install_name_tool -change ${DIR}libavutil.56.dylib "@rpath/libavutil.dylib" ${SHARE_DIR}libavfilter.dylib


rm -f ${SHARE_DIR}libavdevice.dylib
cp ${DIR}libavdevice.58.dylib  ${SHARE_DIR}libavdevice.dylib
install_name_tool -id "@rpath/libavdevice.dylib" ${SHARE_DIR}libavdevice.dylib
install_name_tool -change ${DIR}libswscale.5.dylib "@rpath/libswscale.dylib" ${SHARE_DIR}libavdevice.dylib
install_name_tool -change ${DIR}libavformat.58.dylib "@rpath/libavformat.dylib" ${SHARE_DIR}libavdevice.dylib
install_name_tool -change ${DIR}libavcodec.58.dylib "@rpath/libavcodec.dylib" ${SHARE_DIR}libavdevice.dylib
install_name_tool -change ${DIR}libswresample.3.dylib "@rpath/libswresample.dylib" ${SHARE_DIR}libavdevice.dylib
install_name_tool -change ${DIR}libavutil.56.dylib "@rpath/libavutil.dylib" ${SHARE_DIR}libavdevice.dylib
install_name_tool -change ${DIR}libavfilter.7.dylib "@rpath/libavfilter.dylib" ${SHARE_DIR}libavdevice.dylib

rm -f ${SHARE_DIR}libswscale.dylib
cp ${DIR}libswscale.5.dylib ${SHARE_DIR}libswscale.dylib
install_name_tool -id "@rpath/libswscale.dylib" ${SHARE_DIR}libswscale.dylib
install_name_tool -change ${DIR}libavutil.56.dylib "@rpath/libavutil.dylib" ${SHARE_DIR}libswscale.dylib

rm -f ${SHARE_DIR}libswresample.dylib
cp ${DIR}libswresample.3.dylib ${SHARE_DIR}libswresample.dylib
install_name_tool -id "@rpath/libswresample.dylib" ${SHARE_DIR}libswresample.dylib
install_name_tool -change ${DIR}libavutil.56.dylib "@rpath/libavutil.dylib" ${SHARE_DIR}libswresample.dylib


rm -f ${SHARE_DIR}libavutil.dylib
cp ${DIR}libavutil.56.dylib ${SHARE_DIR}libavutil.dylib
install_name_tool -id "@rpath/libavutil.dylib" ${SHARE_DIR}libavutil.dylib