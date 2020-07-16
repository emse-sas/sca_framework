from py_sca.parser import Log

log = Log.from_file("../../data/sample_512_seed_0.log")
log.report_data("../../data/report_data_512_seed_0.csv")
log.report_traces("../../data/report_traces_512_seed_0.csv")

log = Log.from_reports("../../data/report_data_512_seed_0.csv", "../../data/report_traces_512_seed_0.csv")
print(log)