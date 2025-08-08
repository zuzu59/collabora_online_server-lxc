# petit script pour démarrer Collabora Online Server
# zf250111, zf250808.1436

# sources: 
# https://www.collaboraonline.com/fr/code/
# https://collabora-online-for-nextcloud.readthedocs.io/en/latest/install/


docker run -t -d -p 9980:9980 \
    -e 'domain=cloud\\.nextcloud\\.com' \
    --restart always \
    --cap-add MKNOD \
    --name collabora \
    collabora/code

docker ps

