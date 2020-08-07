import argparse

import core


@core.operation_decorator("clean.py", "\nexiting...")
def main(args):
    if args.log:
        core.remove_logs()
    if args.acq:
        core.remove_acquisition_images()
    if args.cor:
        core.remove_correlation_images()


if __name__ == "__main__":
    argp = argparse.ArgumentParser(description="sca clean")
    argp.add_argument("-l", "--log", help="remove log files", action="store_true")
    argp.add_argument("-a", "--acq", help="remove acquisition images", action="store_true")
    argp.add_argument("-c", "--cor", help="remove correlation images", action="store_true")
    main(argp.parse_args())
