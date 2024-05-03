#!/usr/bin/env sh

# App path exits?
if [ ! -d "/nginx" ]; then
    echo "/nginx dir not exits. Please mount or create it"
    exit 1
fi

# Copy nginx app config
cp /nginx/*.conf /etc/nginx/conf.d/

# Run nginx
nginx -g "daemon off;"