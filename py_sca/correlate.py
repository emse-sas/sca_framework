import argparse

import numpy as np

import app


@app.operation_decorator("correlate.py", "\nexiting...")
def main(args):
    np.set_printoptions(formatter={"int": hex})
    leak, data, meta = app.import_log(args.mode, args.iterations)
    traces, _, _ = app.process_filter(leak)
    handler = app.create_handler(data, traces)
    cor = app.correlate(handler)
    stats = app.guess_key(handler, cor)
    app.plot_correlations(meta, cor, handler.key, stats, handler.guess_envelope(cor))


if __name__ == "__main__":
    argp = argparse.ArgumentParser(description="sca correlation")
    argp.add_argument("-m", "--mode", choices=app.MODES, help="aes source", default="hw")
    argp.add_argument("iterations", type=int, help="count of traces to correlate")
    main(argp.parse_args())
