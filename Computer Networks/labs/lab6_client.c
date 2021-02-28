#include<sys/socket.h>
#include<arpa/inet.h>
#include<string.h>
#include<stdlib.h>
#include<stdio.h>
#include<unistd.h>

int main(int argc, char* argv[]){
    int socket_desc;
    socket_desc = socket(AF_INET, SOCK_STREAM, 0);
    if(socket_desc == -1){
        printf("Erro in making a TCP socket fd");
    }
    struct sockaddr_in server; 
    server.sin_addr.s_addr = inet_addr("127.0.0.1");
    server.sin_family = AF_INET;
    server.sin_port = htons(8080);
    if(connect(socket_desc,(struct sockaddr *)&server, sizeof(server)) < 0){
        printf("Connection Error");
    }
    char message[20000], *mp = message;
    for(int i = 0; i < 19999; i++){
        message[i] = rand()%26+97;
    }
    message[19999] = '\0';
    message[19998] = 'F';
    message[19997] = 'O';
    message[19996] = 'E';
        char recvBuff[2000];
    int n;
    while((message - mp) < 20000)
    {
        send(socket_desc, mp, 1000, 0);
        mp += 1000;
        if(n = recv(socket_desc,recvBuff,1999,0) <= 0)
        {
            printf("Sed response");
        }
        printf("lmao got %s",recvBuff);
    }

    if(n = recv(socket_desc,recvBuff,1999,0) <= 0){
        printf("Sed response");
    }
    printf("%s",recvBuff);
    close(socket_desc);
}