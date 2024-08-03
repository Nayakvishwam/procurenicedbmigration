import os
import configparser


def readConfig():
    config = configparser.ConfigParser()
    config.read('env.config')
    return config


def create_new_folder(folder_path):
    try:
        # Create target directory
        os.makedirs(folder_path, exist_ok=True)
    except Exception as e:
        print(f"Error creating directory '{folder_path}': {e}")
