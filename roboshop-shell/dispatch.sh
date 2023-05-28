yum install golang -y

useradd roboshop

mkdir /app
curl -L -o /tmp/dispatch.zip https://roboshop-artifacts.s3.amazonaws.com/dispatch.zip
cd /app
unzip /tmp/dispatch.zip

cd /app
go mod init dispatch
go get
go build

echo -e "\e[33m Setup SystemD File \e[0m"
cp /home/centos/roboshop-shell/dispatch.service /etc/systemd/system/dispatch.service   &>>/tmp/roboshop.log

systemctl daemon-reload
systemctl enable dispatch
systemctl restart dispatch