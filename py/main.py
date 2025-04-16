import os
import subprocess
import threading

def title(title):
    os.system(f"title {title}")

def display_system_info():
    osver = subprocess.check_output('ver', shell=True).decode().strip()
    print(osver, end="")
    print("\n(c) Microsoft Corporation. All rights reserved.")
    print("-- Modded by Runner\n")

def ping_ip(ip_address, thread_number):
    for _ in range(50):
        print(f"Attacking using thread {thread_number}")
        os.system(f"ping -n 1 {ip_address} >nul")

def start_spamping():
    ip = input("IP: ")
    threads = []
    
    for i in range(50):
        thread = threading.Thread(target=ping_ip, args=(ip, i + 1))
        threads.append(thread)
    
    for i, thread in enumerate(threads):
        thread.start()
        print(f"Started thread {i + 1}")
    
    for thread in threads:
        thread.join()
    
    print("Attack complete.")

def main():
    title("Command Prompt ^| Modded by Runner")
    display_system_info()
    user_profile = os.environ.get('USERPROFILE')
    if user_profile:
        os.chdir(user_profile)

    while True:
        command = input(f"{os.getcwd()}> ")

        if command.lower() == 'exit':
            break
        elif command.lower() == 'credits':
            print("\nMade by Runner")
            print("https://github.com/runn3rr/runnercmd\n")
        elif command.lower() == 'spamping':
            start_spamping()
        elif command.lower().startswith('title ') or command.lower().startswith('cls ') or command.lower().startswith('cmd '):
            print("Cannot use this command.")
        else:
            os.system(command)

if __name__ == "__main__":
    main()
