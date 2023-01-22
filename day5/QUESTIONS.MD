1. True or False: we can prevent the heap being erased during upgrades by using a stable heap.
Answer: False

2. A.call() -> B.call() -> C How much time (or rounds of consensus) do we need to wait for an answer?
Answer:
1st case - all canisters in same subnet: 4 rounds or about 8 sec.
2nd case - B & C or A & B in same subnet: 6 rounds or about 12 seonds.
3rd case - 3 different subnets: 8 rounds or about 16 seconds.

3. Is possible to realize an intercanister call in query mode?
Answer: Yes. See linkedup examples.