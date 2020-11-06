# Get code
echo "This will check-out and install all needed libraries one directory up."
echo "Press <enter> to continue"
read
pushd ..
wget http://www.zlib.net/zlib-1.2.11.tar.gz || (popd;exit 1)
tar zxvf zlib-1.2.11.tar.gz  || (popd; exit 1)
wget -qO- http://ijg.org/files/jpegsrc.v9d.tar.gz | tar xzf - || (popd;exit 1)
git clone https://github.com/preservationvm/testdata.git || (popd;exit 1)
git clone https://github.com/preservationvm/boxing.git || (popd;exit 1)
git clone https://github.com/preservationvm/afs.git || (popd;exit 1)
git clone https://github.com/preservationvm/tiff-4.1.0 || (popd;exit 1)
 
pushd jpeg-9d
cat << EOF > ivm64.patch
diff --git a/config.sub b/config.sub
index 9ccf09a..dae85e6 100755
--- a/config.sub
+++ b/config.sub
@@ -314,6 +314,7 @@ case $basic_machine in
 	| visium \\
 	| wasm32 \\
 	| x86 | xc16x | xstormy16 | xtensa \\
+    | ivm64 \\
 	| z8k | z80)
 		basic_machine=$basic_machine-unknown
 		;;
EOF

patch -p1 < ivm64.patch || (popd;popd;exit 1)
popd

pushd testdata
./create-testdata.sh || { popd; exit 1; }
popd

popd

echo "Install complete"