import std;

void main() {
    int N, K;
    readfln("%d %d", N, K);

    int res;
    foreach (i; 1 .. N + 1) {
        int S, R = i;
        while (R > 0) {
            S += R % 10;
            R /= 10;
        }

        if (S == K) {
            ++res;
        }
    }

    res.writeln;
}
