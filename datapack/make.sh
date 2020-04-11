rm -f datapack.zip
cd src
zip -qr9 datapack.zip .
mv datapack.zip ..
cd ..
sha1sum datapack.zip
