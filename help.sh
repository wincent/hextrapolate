#!/bin/sh

set -e

HELP_SOURCE="${SOURCE_ROOT}/en.lproj/help"
HELP_TARGET="${SOURCE_ROOT}/en.lproj/Hextrapolate Help"
WEB_TARGET="${SOURCE_ROOT}/en.lproj/web_help"

echo
echo "Start: compiling buildtools/help files:"
cd "${SOURCE_ROOT}/buildtools/help"
rake compile
echo "Done: compiling buildtools/help files:"

echo
echo "Start: Compiling/filling in-application embedded help:"
cd "${HELP_SOURCE}"
# note that we explicitly exclude the "autogen" folder
find pages -name "*.tmpl" -not -path "*/autogen/*" -exec walrus fill --no-backup -v -o "$HELP_TARGET" {} \;
echo
echo "Done: Compiling/filling in-application embedded help:"

echo
echo "Start: Running tidy on in-application embedded help:"
cd "$HELP_TARGET"
find . -name "*.html" -exec tidy -utf8 -wrap 0 --fix-uri no --tidy-mark no -quiet -o {} {} \;
echo
echo "Done: Running tidy on in-application embedded help:"

echo
echo "Start: Running hiutil:"
hiutil -C --min-term-length=3 --anchors --generate-summaries --file "${HELP_TARGET}/Hextrapolate Help.helpindex" "$HELP_TARGET"
hiutil -A --file "${HELP_TARGET}/Hextrapolate Help.helpindex"
echo
echo "Done: Running Help Indexer:"

echo
echo "Start: Compiling/filling web-based help:"
cd "${HELP_SOURCE}"
export WALRUS_STYLE="web"
find . -name "*.tmpl" -exec walrus fill --no-backup -v -o "$WEB_TARGET" {} \;
echo
echo "Done: Compiling/filling web-based help:"

echo
echo "Start: Running tidy on web-based help:"
cd "$WEB_TARGET"
find . -name "*.html" -exec tidy -utf8 -wrap 0 --fix-uri no --tidy-mark no -quiet -o {} {} \;
echo
echo "Done: Running tidy on web-based help:"

echo
echo "All done"
