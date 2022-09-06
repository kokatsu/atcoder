import std;

void main() {
    long N, Q, X;
    readf("%d %d %d\n", N, Q, X);

    auto W = readln.chomp.split.to!(long[]);

    long S = W.sum;

    auto C = new long[](N*2+1);
    foreach (i; 0 .. N*2) {
        C[i+1] = C[i] + W[i%N];
    }

    auto A = C.assumeSorted;

    auto cntList = new long[](N);
    cntList[] = -1;

    long d = X / S, r = X % S;
    long pos;
    long[] numList;
    while (cntList[pos] == -1) {
        cntList[pos] = numList.length.to!long;

        auto lb = A.lowerBound(C[pos]+r);

        long nxt = lb.length.to!long;
        numList ~= nxt - pos + d * N;
        pos = nxt % N;
    }

    long len = numList.length.to!long;
    long his = cntList[pos];
    long ring = len - his;
    foreach (_; 0 .. Q) {
        long K;
        readf("%d\n", K);

        --K;

        long res;
        if (K < len) res = numList[K];
        else res = numList[(K-len)%ring+his];

        res.writeln;
    }
}