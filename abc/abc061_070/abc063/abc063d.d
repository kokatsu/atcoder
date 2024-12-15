import std;

void main() {
    long N, A, B;
    readf("%d %d %d\n", N, A, B);

    auto h = new long[](N);
    foreach (i; 0 .. N)
        readf("%d\n", h[i]);

    long D = A - B;
    long ok = h.maxElement, ng;
    while (ok - ng > 1) {
        long mid = (ok + ng) / 2;

        long cnt;
        foreach (x; h) {
            long rem = x - B * mid;
            if (rem > 0)
                cnt += (rem + D - 1) / D;
        }

        (cnt <= mid ? ok : ng) = mid;
    }

    ok.writeln;
}
