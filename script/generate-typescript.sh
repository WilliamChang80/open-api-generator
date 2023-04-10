java -jar swagger-codegen-cli.jar generate \
    -i https://petstore.swagger.io/v2/swagger.json \
    -l typescript-axios \
    -o ../generated/typescript
