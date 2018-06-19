elm-app build
git checkout gh-pages
git pull origin gh-pages
# remove stuff, save CNAME
mv build/* ../monstereos-app
# git add and push it up
