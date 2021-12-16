import std;

void main() {
    int N;
    readf("%d\n", N);

    auto L = new int[](N), R = new int[](N);
    foreach (i; 0 .. N) {
        int t, l, r;
        readf("%d %d %d\n", t, l, r);

        --t, l *= 2, r *= 2;

        if ((t >> 1) & 1) {
            ++l;
        }

        if (t & 1) {
            --r;
        }

        L[i] = l, R[i] = r;
    }

    int res;
    foreach (i; 0 .. N-1) {
        foreach (j; i+1 .. N) {
            int l = max(L[i], L[j]), r = min(R[i], R[j]);
            if (l <= r) {
                ++res;
            }
        }
    }

    res.writeln;
}