import os
from lib import aes

CLEAN_ACQ_CSV = True
CLEAN_ACQ_IMG = True
CLEAN_COR_IMG = True
IMG_ROOT = "media/img"

if CLEAN_ACQ_CSV:
    for dirpath, _, filenames in os.walk("data/acquisition"):
        for filename in filenames:
            os.remove(dirpath + filename)

if CLEAN_ACQ_IMG:
    for dirpath, _, filenames in os.walk(os.path.join(IMG_ROOT, "acquisition")):
        for filename in filenames:
            os.remove(os.path.join(dirpath, filename))

if CLEAN_COR_IMG:
    for dirpath, _, filenames in os.walk(os.path.join(IMG_ROOT, "correlation")):
        for filename in filenames:
            os.remove(os.path.join(dirpath, filename))