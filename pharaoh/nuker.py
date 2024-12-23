import os
import fade
import requests
import time

os.system("title PHARAOH NUKER")

logo = """
██████╗ ██╗  ██╗ █████╗ ██████╗  █████╗  ██████╗ ██╗  ██╗    ███╗   ██╗██╗   ██╗██╗  ██╗███████╗██████╗ 
██╔══██╗██║  ██║██╔══██╗██╔══██╗██╔══██╗██╔═══██╗██║  ██║    ████╗  ██║██║   ██║██║ ██╔╝██╔════╝██╔══██╗
██████╔╝███████║███████║██████╔╝███████║██║   ██║███████║    ██╔██╗ ██║██║   ██║█████╔╝ █████╗  ██████╔╝
██╔═══╝ ██╔══██║██╔══██║██╔══██╗██╔══██║██║   ██║██╔══██║    ██║╚██╗██║██║   ██║██╔═██╗ ██╔══╝  ██╔══██╗
██║     ██║  ██║██║  ██║██║  ██║██║  ██║╚██████╔╝██║  ██║    ██║ ╚████║╚██████╔╝██║  ██╗███████╗██║  ██║
╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝    ╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
                                                                                                        
                                                         
"""

print(fade.fire(logo))

author = input("\033[1;33m╚═════➤ Enter the token: ")
os.system("cls")
print(fade.fire(logo))
url = input("\033[1;33m╚═════➤ Enter the request url: ")
os.system("cls")
print(fade.fire(logo))
message = input("\033[1;33m╚═════➤ Enter the message: ")
os.system("cls")
print(fade.fire(logo))
amount = int(input("\033[1;33m╚═════➤ Enter how many times u wanna spam: "))
os.system("cls")
print(fade.fire(logo))
delay = int(input("\033[1;33m╚═════➤ Enter the delay between the messages: "))
os.system("cls")
print(fade.fire(logo))

payload = {
    'content': message
}

header = {
    'authorization': author
}

for i in range(amount):
    requests.post(url, data=payload, headers=header)
    print(f"\033[1;33mMessage sent {i} times.")
    time.sleep(delay)

os.system("exit")