if [[ -z "$ARTIFACT_VERSION" ]]; then
    echo "API version was not defined, terminating..."
    exit 
fi

echo "Generating API to $GENERATED_API_NAME with version $ARTIFACT_VERSION"

java -jar ./script/swagger-codegen-cli.jar generate \
    -i ./spec/swagger.yml \
    -l typescript-axios \
    -o ./generated/typescript \
    --artifact-version $ARTIFACT_VERSION \
    --additional-properties  \
    npmName=@$GENERATED_API_NAME, \
    npmVersion=$ARTIFACT_VERSION

cp ./script/publish-typescript.sh ./generated/typescript