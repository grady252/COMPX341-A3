if (($# != 1))
then
    echo "Please provide a commit message"
    exit
fi

echo "0) Starting pipeline"
cd assets/

echo "1) Running 'npm install'"
if npm install; then
    echo "'npm install' succeeded"
else
    echo "'npm install' failed, stopping pipeline"
    exit
fi

echo "2) Building application"
if npm run build; then
    echo "Build succeeded"
else
    echo "Build failed, stopping pipeline"
    exit
fi

echo "3) Commiting files"
git add .
git commit -m "$1"
git push

echo "4) Starting application"
npm run start