# petit script pour arrêter Collabora Online Server
# zf250111, zf250808.1504

# sources: 
# https://www.collaboraonline.com/fr/code/
# https://collabora-online-for-nextcloud.readthedocs.io/en/latest/install/

docker container rm -f collabora

exit


docker run -t -d -p 9980:9980 \
    -e 'domain=cloud\\.nextcloud\\.com' \
    --restart always \
    --cap-add MKNOD \
    --name collabora \
    collabora/code
