#! /bin/bash

# Path Variables
SWAGGER_JAR="swagger-codegen-cli.jar"
INPUT_SPEC_FILE="https://raw.githubusercontent.com/apache/fineract/develop/fineract-provider/src/main/resources/static/swagger-ui/response.json"
CLIENT_LANGUAGE="java"
OUTPUT_FOLDER="java/retrofit2"
CONFIG_FILE_NAME="config.json"

echo "Generating Fineract Client SDK..."
echo "Output folder: " $OUTPUT_FOLDER

# Remove output directory if it already exists
if [ -d "$OUTPUT_FOLDER" ]; then rm -Rf $OUTPUT_FOLDER; fi

# Create output directory
mkdir $OUTPUT_FOLDER

# Generate SDK
java -jar $SWAGGER_JAR generate \
-i $INPUT_SPEC_FILE \
-l $CLIENT_LANGUAGE \
-o $OUTPUT_FOLDER \
-c $CONFIG_FILE_NAME