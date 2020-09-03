# Fineract Client SDK Generator

Generates a Fineract Client SDK using [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) and [Apache Fineract](https://github.com/apache/fineract). Supports all clients supported by Swagger CodeGen.

## Generate SDK

1. Clone the repository
2. Run `./client-generator.sh` in CMD for Windows or Linux Terminal
3. The SDK will be generated under the folder `out`
4. For more customizations, update the `config.json` file with [these](https://gist.github.com/Grandolf49/2d222c3d1d0b834ad8f02b5fde8b4c14) options.

## Build SDK
1. Navigate to `out` folder.
2. Run `mvn clean package`
3. `client-{VERSION}.jar` file will be generated under `target` folder.
4. To skip tests and javadoc:  
    - Run `mvn -DskipTests=true "-Dmaven.javadoc.skip=true" clean package`

## Release SDK

To release the SDK, all you have to do is create a Git Tag. Rest of the work is performed by CircleCI. It is configured to create a GitHub Release as soon as a Git Tag is pushed.

1. Create a Git Tag
   - Run `git tag {tag_name}`
2. Push tag to origin
   - Run `git push origin --tags`

A GitHub Release will be created after the tag is pushed.

## Delete Tags

To deleta local tags
1. Run `git tag -d {tag_name}`

To delete remote tags
1. Run `git push origin --delete {tag_name}`