"""Create necessary sub-directories and data for the framework

"""

import core


@core.operation_decorator("setup.py", "\nexiting...")
def main():
    core.create_logs_dir()
    core.create_images_dir()


if __name__ == "__main__":
    main()
