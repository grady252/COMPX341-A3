echo "0) Starting pipeline"

echo "1) Running 'npm install'"
if npm install; then
    echo "'npm install' succeeded"
else
    echo "'npm install' failed"
    exit
fi

echo "2) Building application"
if npm run build; then
    echo "Build succeeded"
else
    echo "Build failed"
    exit
fi

echo "3) Commiting files"
git add .
git commit -m "COMPX341-22A-A3 Commiting from CI/CD Pipeline"
git push

echo "4) Starting application"
npm run start