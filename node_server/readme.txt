1、安装node.js 下载地址：http://nodejs.org/dist/v0.10.5/node-v0.10.5.pkg  


2、安装socket.io组建  npm install socket.io

3、node.js卸载
lsbom -f -l -s -pf /var/db/receipts/org.nodejs.pkg.bom \
| while read i; do
  sudo rm /usr/local/${i}
done
sudo rm -rf /usr/local/lib/node \
     /usr/local/lib/node_modules \
     /var/db/receipts/org.nodejs.*
