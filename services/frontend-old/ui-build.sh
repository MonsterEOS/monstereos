elm-app build
git checkout gh-pages
# remove stuff, but CNAME
cp -R build/* ../monstereos-app
# git add and push it up
