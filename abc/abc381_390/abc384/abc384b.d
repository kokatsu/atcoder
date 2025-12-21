import std;

void main() {
    int N, R;
    readf("%d %d\n", N, R);

    int res = R;
    foreach (_; 0 .. N) {
        int D, A;
        readf("%d %d\n", D, A);

        if ((D == 1 && 1600 <= res && res <= 2799) || (D == 2 && 1200 <= res && res <= 2399)) {
            res += A;
        }
    }

    res.writeln;
}
