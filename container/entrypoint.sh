
# Copy configuration files over
cp /opt/config/* /app/config/

# Sleep for three seconds for the db to load
echo "Waiting for database..."
sleep 3

# Run
cd /app
NODE_ENV=production npm start