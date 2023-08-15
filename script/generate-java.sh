if [[ -z "$ARTIFACT_VERSION" ]]; then
    echo "API version was not defined, terminating..."
    exit 
fi

echo "Generating API to $GENERATED_API_NAME with version $ARTIFACT_VERSION"

java -jar ./script/swagger-codegen-cli.jar generate \
    -i ./spec/swagger.yml \
    -l java \
    -o ./generated/java \
    --artifact-version $ARTIFACT_VERSION \
    --additional-properties  \
    apiPackage=$BASE_PACKAGE \
    artifactUrl=https://maven.pkg.github.com/$GENERATED_API_NAME

cp ./script/publish-java.sh ./generated/java
cp ./script/update-gradle.py ./generated/java