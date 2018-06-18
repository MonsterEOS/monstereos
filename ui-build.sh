elm-app build
mv build/ /tmp/build
git checkout gh-pages
git pull origin gh-pages
# remove stuff, save CNAME
mv /tmp/build/* ./
# git add and push it up
