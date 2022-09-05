using PEPSKit, MPSKit, TensorKit

peps = InfinitePEPS(2, 3)
tpeps = InfiniteTransferPEPS(peps, 1, 1)

mps = initializeMPS(tpeps, 4);

mps, _, _ = leading_boundary(mps, tpeps, VUMPS());

expectation_value(