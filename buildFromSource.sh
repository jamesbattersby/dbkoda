#  Pre-requisities: node, npm

npm -g install yarn rimraf

git clone https://github.com/jamesbattersby/dbkoda
git clone https://github.com/jamesbattersby/dbkoda-ui
git clone https://github.com/jamesbattersby/dbkoda-controller





for dir in dbkoda-ui dbkoda-controller dbkoda ;do
   ( cd $dir;yarn install  )
done

(cd dbkoda;yarn dev:link)

(cd dbKoda-controller; npm rebuild)

(cd  dbKoda-ui;yarn dev) &
(cd  dbKoda-controller; yarn dev) &
(cd  dbKoda; npm run byo) &

