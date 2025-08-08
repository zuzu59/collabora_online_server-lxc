# petit script pour updater Collabora Online Server
# zf250111, zf250808.1456

# sources: 
# https://www.collaboraonline.com/fr/code/
# https://collabora-online-for-nextcloud.readthedocs.io/en/latest/install/


docker ps

read -p "Etes-vous certain que le nom du container se nomme 'collabora' ?"
read -p "Si non, CTRL+C et 'docker container stop name'"


docker container rm -f collabora
docker system prune --volumes -a -f
./start.sh

docker ps



exit

docker run -t -d -p 9980:9980 \
    -e 'domain=cloud\\.nextcloud\\.com' \
    --restart always \
    --cap-add MKNOD \
    --name collabora \
    collabora/code
