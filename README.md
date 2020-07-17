# Fineract Client SDK Generator

Generates a Fineract Client SDK using [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) and [Apache Fineract](https://github.com/apache/fineract). Supports all clients supported by Swagger CodeGen.

## Generate SDK

1. Clone the repository
2. Run `./client-generator.sh` in CMD for Windoes or Linux Terminal
3. The SDK will be generated under the folder `out`
4. For more customizations, update the `config.js` file with [these](https://gist.github.com/Grandolf49/2d222c3d1d0b834ad8f02b5fde8b4c14) options.

## Build SDK
1. Navigate to `out` directory.
2. Run the command `mvn clean package`
3. `fineract-client-{VERSION}.jar` file will be generated under `target` folder.
