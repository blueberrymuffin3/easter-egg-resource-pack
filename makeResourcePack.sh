rm -f resourcepack.zip
cd resourcepack
zip -qr9 resourcepack.zip .
mv resourcepack.zip ..
cd ..
sha1sum resourcepack.zip
