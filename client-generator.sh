#! /bin/bash

# Path Variables
SWAGGER_JAR="swagger-codegen-cli.jar"
INPUT_SPEC_FILE="https://gist.githubusercontent.com/Grandolf49/62b084ebeec49ae56f729466d0c5ceb0/raw/bc63b70f0c6298a1e99505ebc3445f7f3b6b945d/response.json"
CLIENT_LANGUAGE="java"
OUTPUT_FOLDER="out"
CONFIG_FILE_NAME="config.json"

echo "Generating Fineract Client SDK..."
echo "Output folder: " $OUTPUT_FOLDER

# Remove output directory if it already exists
if [ -d "$OUTPUT_FOLDER" ]; then echo "Output directory exists. Deleting the directory..." && rm -rf $OUTPUT_FOLDER; fi

# Create output directory
mkdir $OUTPUT_FOLDER

# Generate SDK
java -jar $SWAGGER_JAR generate \
-i $INPUT_SPEC_FILE \
-l $CLIENT_LANGUAGE \
-o $OUTPUT_FOLDER \
-c $CONFIG_FILE_NAME