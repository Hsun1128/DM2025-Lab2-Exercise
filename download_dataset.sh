#!/bin/bash
competition="dm-lab-2-private-competition"
kaggle_json="$HOME/.kaggle/kaggle.json"

username=$(jq -r '.username' "$kaggle_json")
key=$(jq -r '.key' "$kaggle_json")

curl -L -u $username:$key \
"https://www.kaggle.com/api/v1/competitions/data/download-all/$competition" \
-o "$competition.zip"
