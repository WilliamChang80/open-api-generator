cd ../generated/typescript
echo "Current directory is: $(pwd)"
npm install

echo "npm.pkg.github.com/:_authToken=${NPM_CONFIG_TOKEN} " > .npmrc
echo "@WilliamChang80:registry=https://npm.pkg.github.com always-auth=true" > .npmrc
npm publish