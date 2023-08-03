npm install

echo -e "@${github.repository_owner}:registry=https://npm.pkg.github.com" > .npmrc
echo "//npm.pkg.github.com/:_authToken=${NPM_TOKEN} " >> .npmrc

npm publish

echo "Published package with version $ARTIFACT_VERSION"