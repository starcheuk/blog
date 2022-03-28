#
# To run this script
# sh deploy.sh
#

#!/usr/bin/env sh

# abort the script when occuring errors
set -e

# packaging
npm run build

# move packaged files to dist directory 
cd dist

git init # initial dist since gitignore by default
git add -A
git commit -m 'deploy'

# deploy to branch "gh-pages"
git push -f https://github.com/starcheuk/blog.git master:gh-pages
# push and force replace all the content in dist folder to remote gh-pages branch
# command: git push -f

cd -