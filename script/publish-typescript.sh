npm install

echo -e "@${GITHUB_REPOSITORY_OWNER}:registry=https://npm.pkg.github.com" > .npmrc
echo "//npm.pkg.github.com/:_authToken=${NPM_TOKEN} " >> .npmrc

npm publish

echo "Published package with version $ARTIFACT_VERSION"