hexo clean
hexo g
cp gh-pages-README.md public
cd public
mv gh-pages-README.md README.md
git init
git add -A
git commit -m 'update site'
git push -f git@github.com:getjll/blog.git master:gh-pages
