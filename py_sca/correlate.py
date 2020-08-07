import argparse

import numpy as np

import core


@core.operation_decorator("correlate.py", "\nexiting...")
def main(args):
    np.set_printoptions(formatter={"int": hex})
    leak, data, meta = core.import_log(args.mode, args.iterations)
    traces, _, _ = core.process_filter(leak)
    handler = core.create_handler(data, traces)
    cor = core.correlate(handler)
    stats = core.guess_key(handler, cor)
    core.plot_correlations(meta, cor, handler.key, stats, handler.guess_envelope(cor))


if __name__ == "__main__":
    argp = argparse.ArgumentParser(description="sca correlation")
    argp.add_argument("-m", "--mode", choices=core.MODES, help="aes source", default="hw")
    argp.add_argument("iterations", type=int, help="count of traces to correlate")
    main(argp.parse_args())
