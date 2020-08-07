import argparse

import core


@core.operation_decorator("acquire.py", "\nexiting...")
def main(args):
    s = core.acquire(args.source, args.mode, args.iterations)
    parser = core.parse(s, args.iterations)
    core.export_log(parser.leak, parser.data, parser.meta, iterations=args.iterations)
    data = core.process_acquisition(parser.leak)
    core.plot_acquisition(data, parser.meta, limit=args.plot)


if __name__ == "__main__":
    argp = argparse.ArgumentParser(description="sca acquisition")
    argp.add_argument("iterations", type=int, help="count of traces to record")
    argp.add_argument("source", type=str, help="acquisition source")
    argp.add_argument("-m", "--mode", choices=core.MODES, help="aes source", default="hw")
    argp.add_argument("-p", "--plot", type=int, help="count of raw traces to plot", default=16)
    main(argp.parse_args())
