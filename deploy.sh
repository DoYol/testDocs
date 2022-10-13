# 忽略错误
set -e

# 构建打包
npm run docs:build

# 进入待发布的目录
cd docs/.vitepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# -f：强制推送
# 如果部署到 https://<USERNAME>.github.io     
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 如果是部署到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:DoYol/docs.git master:gh-pages

cd -
rm -rf docs/.vitepress/dist