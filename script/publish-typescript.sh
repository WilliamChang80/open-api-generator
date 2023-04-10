cd ../generated/typescript
echo "Current directory is: $(pwd)"
npm install

echo "WilliamChang80:registry=https://npm.pkg.github.com" > .npmrc

npm publish