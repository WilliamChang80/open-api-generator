npm install

echo -e "@WilliamChang80:registry=https://npm.pkg.github.com" > .npmrc
echo "//npm.pkg.github.com/:_authToken=${NPM_TOKEN} " >> .npmrc

npm publish

echo "Published package with version $ARTIFACT_VERSION"