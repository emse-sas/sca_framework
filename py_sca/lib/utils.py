from datetime import timedelta

def duration(sec1, sec0):
    return timedelta(seconds=sec1 - sec0)
