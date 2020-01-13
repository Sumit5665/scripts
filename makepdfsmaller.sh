fn(){
  gs -q -dNOPAUSE -dBATCH -dSAFER	-sDEVICE=pdfwrite -dPDFSETTINGS=/screen -dCompatibilityLevel=1.4 -dAutoRotatePages=/None -dEmbedAllFonts=true -dMonoImageDownsampleType=/Subsample -dMonoImageResolution=$3 -dGrayImageDownsampleType=/Bicubic -dGrayImageResolution=$3 -dColorImageDownsampleType=/Bicubic -dColorImageResolution=$3 -sOutputFile="$2" "$1"
}

IFL="$1"
OFL="$2"
RES="$3"
fn "$IFL" "$OFL" "$RES" || exit $?
