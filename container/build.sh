
echo "+ apt-get update"
apt-get update > /dev/null

echo "+ apt-get install wget unzip git python"
apt-get install -y --force-yes wget unzip git python > /dev/null

echo "+ cd /tmp"
cd /tmp

echo "+ wget https://github.com/Mailtrain-org/mailtrain/archive/v${MAILTRAIN_VERSION}.zip"
wget -q -O mailtrain.zip https://github.com/Mailtrain-org/mailtrain/archive/v${MAILTRAIN_VERSION}.zip

echo "+ unzip mailtrain.zip"
unzip mailtrain.zip > /dev/null

echo "+ rm mailtrain.zip"
rm mailtrain.zip

echo "+ mkdir /opt/config"
mkdir -p /opt/config

echo "+ mv mailtrain/* ./"
mv mailtrain-${MAILTRAIN_VERSION}/* /app/

echo "+ cd /app"
cd /app

echo "+ npm install"
npm install --loglevel=error --production

# Clean up
echo "+ cleaning up"
rm -rf /var/lib/apt/lists/*
apt-get remove wget unzip git -y --force-yes