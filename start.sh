# petit script pour démarrer Collabora Online Server
# zf250111.1500

# sources: https://collabora-online-for-nextcloud.readthedocs.io/en/latest/install/


docker run -t -d -p 9980:9980 \
    -e 'domain=cloud\\.nextcloud\\.com' \
    --restart always \
    --cap-add MKNOD \
    collabora/code
