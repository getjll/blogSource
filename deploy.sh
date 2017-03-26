hexo clean
hexo g
cp blog-README.md public
cd public
mv blog-README.md README.md
git init
git add -A
git commit -m 'update site'
git push -f git@github.com:getjll/getjll.github.io.git master
