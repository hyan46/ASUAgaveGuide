from __future__ import print_function
import os
import pickle 
import torch

PREFIX = "result_"
i = int(os.environ["SLURM_ARRAY_TASK_ID"])
result = {"square":i**2, "cube":i**3}
pickle.dump(result, open(PREFIX+str(i)+".pickle", "wb"))

