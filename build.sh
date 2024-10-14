set -e

if [ -d "build" ]
then
    cd build
    git pull
    cd ../
else
    git clone https://github.com/Jothin-kumar/build.git
fi
printf "git (build) ✅\n\n"

python3 build/build.py
printf "build.py ✅\n\n"
cp -r assets/images build-output/img
printf "copy images ✅\n\n"

cp robots.txt build-output/robots.txt
cp sitemap.txt build-output/sitemap.txt
printf "robots.txt and sitemap ✅\n\n"


if [ -d "url-shortener-joth.in" ]
then
    cd "url-shortener-joth.in"
    git pull
    cd ../
else
    git clone https://github.com/Jothin-kumar/url-shortener-joth.in.git
fi
printf "git (url-shortener) ✅\n\n"

cd "url-shortener-joth.in"
python3 export.py
cd ../
cp "url-shortener-joth.in/_redirects" "build-output/_redirects"
printf "url shortener ✅\n\n"
