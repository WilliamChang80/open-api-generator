if [[ -z "$ARTIFACT_VERSION" ]]; then
    echo "API version was not defined, terminating..."
    exit 
fi

echo "Generating API to $GENERATED_API_NAME with version $ARTIFACT_VERSION"

java -jar ./script/swagger-codegen-cli.jar generate \
    -i ./spec/swagger.yml \
    -l go \
    -o ./generated/go \
    --artifact-version $ARTIFACT_VERSION \
    --additional-properties  \
    packageName=$GENERATED_API_NAME, \
    packageVersion=$ARTIFACT_VERSION
