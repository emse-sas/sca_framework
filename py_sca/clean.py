import os
from lib import aes

CLEAN_ACQ_LOG = True
CLEAN_ACQ_IMG = True
CLEAN_COR_IMG = True
IMG_ROOT = "../media/img"

if CLEAN_ACQ_LOG:
    for dir_path, _, filenames in os.walk("../data/acquisition"):
        for filename in filenames:
            os.remove(os.path.join(dir_path, filename))

if CLEAN_ACQ_IMG:
    for dir_path, _, filenames in os.walk(os.path.join(IMG_ROOT, "acquisition")):
        for filename in filenames:
            os.remove(os.path.join(dir_path, filename))

if CLEAN_COR_IMG:
    for dir_path, _, filenames in os.walk(os.path.join(IMG_ROOT, "correlation")):
        for filename in filenames:
            os.remove(os.path.join(dir_path, filename))
