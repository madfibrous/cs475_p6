kernel void reduction( global const float *A, global const float *B, local float *prods, global float *C )
{
    int gid = get_global_id(0);
    int numItems = get_local_size(0);
    int tnum = get_local_id(0);

    int wgNum = get_group_id(0);

	prods[tnum] = A[gid] * B[gid];

    int offset = 1;
	for (offset = 1; offset < numItems; offset *= 2)
	{
		int mask = 2 * offset - 1;
        barrier(CLK_LOCAL_MEM_FENCE);
		if ((tnum & mask) == 0)
		{
			prods[tnum] += prods[tnum + offset];
		}
	}

    barrier(CLK_LOCAL_MEM_FENCE);
	if (tnum == 0)
		C[wgNum] = prods[0];
}
