rm -f resourcepack.zip
cd src
zip -qr9 resourcepack.zip .
mv resourcepack.zip ..
cd ..
sha1sum resourcepack.zip
