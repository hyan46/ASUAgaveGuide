i=str2num(getenv('SLURM_ARRAY_TASK_ID'));
rng(i)
x = randn(100)
y = sin(x)
save([int2str(i),'.mat'],'i','y')
