#!/bin/bash

# Entry point script to orchestrate the execution of all other scripts in order

# Step 1: Update the HTML file with the new word count
bash /app/scripts/update_html.sh

# Step 2: Start the Python HTTP server to serve the index.html file
echo "Starting Python HTTP server to serve index.html..."
cd /app
python3 -m http.server 80
