# !/user/bin/python
import socket


sock=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
host='192.168.1.100'
port=135

def Scanner(port):
     if sock.connect_ex((host,port)):
             print("port %d is closed{port} ")
     else:
         print("Port %d is Open {port}")


Scanner(port)