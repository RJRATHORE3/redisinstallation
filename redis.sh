Redis Installation
--------------------------
-----------------------------------------------------------------
https://redis.io/docs/install/install-redis/install-redis-on-linux/
sudo apt install lsb-release curl gpg

curl -fsSL https://packages.redis.io/gpg | sudo gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/redis.list

sudo apt-get update

sudo apt-get install redis
-------------------------------------------------------

Go to → /etc/redis
Open redis.conf file → vim redis.conf
Set some permeameter
1.maxmemory(Total Memory - 15% of total memory = Total Memory - 10% of total memory)
2.maxmemory-policy allkeys-lru

If we have multiple server or want redis centralize 
3. bind 127.0.0.0 → bind 0.0.0.0
 
