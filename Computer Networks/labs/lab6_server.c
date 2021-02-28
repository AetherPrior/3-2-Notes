#include<stdio.h>
#include<sys/socket.h>
#include<arpa/inet.h>
#include<string.h>
#include<unistd.h>
#define MAX_CONNECTION 3
int main(int argc, char* argv[]){
    int socket_desc, new_socket, c;
    struct sockaddr_in client;
    struct sockaddr_in server;
    socket_desc = socket(AF_INET, SOCK_STREAM, 0);
    if(socket_desc == -1){
        printf("Sed socket\n");
        return 1;
    }
    server.sin_family = AF_INET;
    server.sin_addr.s_addr = inet_addr("127.0.0.1");
    server.sin_port = htons(8080);

    if(bind(socket_desc,(struct sockaddr *)&server, sizeof(server)) < 0){
        printf("Sed bind");
        return 2;
    }

    listen(socket_desc, MAX_CONNECTION);
    char message[20] = "Got it!";
    c = sizeof(struct sockaddr_in);
    new_socket = accept(socket_desc, (struct sockaddr *)&client, (socklen_t*)&c);
    if(new_socket < -1){
        perror("Accept failed");
    }
    char recvBuff[2000], *rp = recvBuff;
    int n;
    FILE *fp = fopen("resp.txt","a");
    while(1){
        n = recv(new_socket, recvBuff, 1999, 0) ;
        if(strstr(recvBuff,"EOF")){
            fwrite(recvBuff,n,1,fp);
            break;
        }
        fwrite(recvBuff, n,1,fp);
        printf("Received %d\n",n);
        send(new_socket, message, strlen(message), 0);
    }
    //send(new_socket, message, strlen(message), 0);
    close(new_socket);
    return 0;
}