import socket
import sys

if len(sys.argv) < 3:
    print("usage: python3 check_port.py <host> <port>")
    sys.exit(1)

host = sys.argv[1]
port = int(sys.argv[2])

s= socket.socket(socket.AF_INET, socket.SOCK_STREAM)
result = s.connect_ex((host, port))

if result == 0:
    print(f"Port {port} on {host} is open")
else:
    print(f"port {port} on {host} is closed")

s.close()

# Udaydheerajs-MacBook-Pro:Python udaydheerajmandadi$ python3 check_port.py google.com 443
