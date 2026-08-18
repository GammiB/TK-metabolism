function set_glo2_worker(g2)
% set_glo2_worker.m
% Helper for parallel CI calculation in calc_conf.m.
%
% 'global' declarations are not allowed directly inside a parfor loop
% body. To get the glo2 structure onto each parallel worker (needed
% internally by packunpack.m, which relies on 'global glo2'), this
% function is called once per worker via parfevalOnAll BEFORE the parfor
% loop starts. Because the global declaration lives inside this ordinary
% function rather than in the parfor body itself, MATLAB allows it, and
% it sets glo2 in that worker's own persistent global namespace -- which
% remains set for the lifetime of the worker process, including during
% the parfor loop that runs afterwards on the same pool.

global glo2
glo2 = g2;
