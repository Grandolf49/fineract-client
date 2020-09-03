#! /bin/bash

# Path Variables
SWAGGER_JAR="swagger-codegen-cli.jar"
CLIENT_LANGUAGE="java"
OUTPUT_FOLDER="out"
CONFIG_FILE_NAME="config.json"
INPUT_SPEC_FILE="fineract-1.0.0.json"
#INPUT_SPEC_FILE="fineract-1.3.0.yaml"

echo "Generating Fineract Client SDK..."
echo "Output folder: " $OUTPUT_FOLDER

# Remove output directory if it already exists
if [ -d "$OUTPUT_FOLDER" ]; then echo "Output directory exists. Deleting the directory..." && rm -rf $OUTPUT_FOLDER; fi

# Create output directory
mkdir $OUTPUT_FOLDER

# Generate SDK
chmod +x $SWAGGER_JAR
java -jar $SWAGGER_JAR generate \
-i $INPUT_SPEC_FILE \
-l $CLIENT_LANGUAGE \
-o $OUTPUT_FOLDER \
-c $CONFIG_FILE_NAME