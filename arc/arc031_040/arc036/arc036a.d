import std;

void main() {
    int N, K;
    readfln("%d %d", N, K);

    int[] t = new int[](N);
    int res = -1, S;
    foreach (i; 0 .. N) {
        readfln("%d", t[i]);
    }

    foreach (i; 0 .. N) {
        S += t[i];

        if (i >= 2) {
            if (S < K) {
                res = i + 1;
                break;
            }

            S -= t[i - 2];
        }
    }

    res.writeln;
}
