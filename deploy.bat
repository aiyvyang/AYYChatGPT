@echo off
echo.
echo [deploy] build deploy
echo.

call yarn build

cd dist

git init

git add -A

git commit -m 'deploy'

git push -f https://gitee.com/aiyvyang-studio/AYYChatGPT.git main:gh-pages

git push -f https://github.com/aiyvyang-studio/AYYChatGPT.git main:gh-pages

exit
