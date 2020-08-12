import argparse

import core


@core.operation_decorator("setup.py", "\nexiting...")
def main():
    core.create_logs_dir()
    core.create_images_dir()


argp = argparse.ArgumentParser(
    description="Create directories and data for the application.")

if __name__ == "__main__":
    main()
