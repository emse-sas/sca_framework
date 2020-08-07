import numpy as np

import app

COUNT_TRACES = 2 ** 8  # count of traces to record from FPGA
MODE_AES = "hw"
F_SAMPLING = 200e6


@app.operation_decorator("***", "\nexiting...")
def main():
    np.set_printoptions(formatter={"int": hex})
    leak, data, meta = app.import_log(MODE_AES, COUNT_TRACES)
    traces, _, _ = app.process_filter(leak, F_SAMPLING)
    handler = app.create_handler(data, traces)
    cor = app.correlate(handler)
    stats = app.guess_key(handler, cor)
    app.plot_correlations(meta, cor, handler.key, stats, handler.guess_envelope(cor))


main()
