hexo clean
hexo g
cd public
git init
git add -A
git commit -m 'update site'
git push -f git@github.com:getjll/blog.git master:gh-pages