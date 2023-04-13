if [[ -z "$ARTIFACT_VERSION" ]]; then
    echo "API version was not defined, terminating..."
    exit 
fi

echo "Generating API with version $ARTIFACT_VERSION"

java -jar ./script/swagger-codegen-cli.jar generate \
    -i https://petstore.swagger.io/v2/swagger.json \
    -l typescript-axios \
    -o ./generated/typescript \
    --artifact-version $ARTIFACT_VERSION \
    --additional-properties  \
    npmName=@WilliamChang80/open-api, \
    npmVersion=$ARTIFACT_VERSION

cp ./script/publish-typescript.sh ./generated/typescript