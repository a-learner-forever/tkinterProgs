import tkinter as tk
from tkinter import messagebox

# function to validate login
def login():
    username = entry_user.get()
    password = entry_pass.get()

    if username == "admin" and password == "1234":
        messagebox.showinfo("Login", "Login Successful!")
    else:
        messagebox.showerror("Login", "Invalid Username or Password")

# window
root = tk.Tk()
root.title("Login App")
root.geometry("300x200")

# labels
tk.Label(root, text="Username").pack(pady=5)
entry_user = tk.Entry(root)
entry_user.pack()

tk.Label(root, text="Password").pack(pady=5)
entry_pass = tk.Entry(root, show="*")
entry_pass.pack()

# login button
tk.Button(root, text="Login", command=login).pack(pady=15)

root.mainloop()
