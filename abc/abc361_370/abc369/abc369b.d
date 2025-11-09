import std;

void main() {
    int N;
    readf("%d\n", N);

    int res, L, R;
    foreach (_; 0 .. N) {
        int A;
        dchar S;
        readf("%d %c\n", A, S);

        if (S == 'L') {
            if (L > 0) {
                res += abs(L - A);
            }
            L = A;
        }
        else {
            if (R > 0) {
                res += abs(R - A);
            }
            R = A;
        }
    }

    res.writeln;
}
