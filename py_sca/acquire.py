import argparse

import app


@app.operation_decorator("acquire.py", "\nexiting...")
def main(args):
    s = app.acquire(args.source, args.mode, args.iterations)
    parser = app.parse(s, args.iterations)
    app.export_log(parser.leak, parser.data, parser.meta, iterations=args.iterations)
    data = app.process_acquisition(parser.leak)
    app.plot_acquisition(data, parser.meta, limit=args.plot)


if __name__ == "__main__":
    argp = argparse.ArgumentParser(description="sca acquisition")
    argp.add_argument("iterations", type=int, help="count of traces to record")
    argp.add_argument("source", type=str, help="acquisition source")
    argp.add_argument("-m", "--mode", choices=app.MODES, help="aes source", default="hw")
    argp.add_argument("-p", "--plot", type=int, help="count of raw traces to plot", default=16)
    main(argp.parse_args())
