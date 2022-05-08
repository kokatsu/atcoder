import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto x = new int[](Q);
    foreach (i; 0 .. Q) readf("%d\n", x[i]);

    x[] -= 1;

    auto n2p = N.iota.array;
    auto p2n = N.iota.array;
    foreach (a; x) {
        if (n2p[a] >= N - 1) {
            int s = p2n[n2p[a]], t = p2n[n2p[a]-1];
            swap(n2p[s], n2p[t]);
            swap(p2n[n2p[s]], p2n[n2p[t]]);
        }
        else {
            int s = p2n[n2p[a]], t = p2n[n2p[a]+1];
            swap(n2p[s], n2p[t]);
            swap(p2n[n2p[s]], p2n[n2p[t]]);
        }
    }

    p2n[] += 1;
    writefln("%(%s %)", p2n);
}