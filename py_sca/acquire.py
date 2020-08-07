import app
COUNT_TRACES = 2 ** 8  # count of traces to record from FPGA
TRACES_TO_PLOT = 16  # count of raw traces to plot
MODE_AES = "hw"
LOG_SOURCE = "COM5"
F_SAMPLING = 200e6


@app.operation_decorator("***", "\nexiting...")
def main():
    s = app.acquire(LOG_SOURCE, MODE_AES, COUNT_TRACES)
    parser = app.parse(s, COUNT_TRACES)
    app.export_log(parser.leak, parser.data, parser.meta)
    data = app.process_acquisition(parser.leak, F_SAMPLING)
    app.plot_acquisition(data, parser.meta, limit=TRACES_TO_PLOT)


main()
