import std;

void main() {
    int N;
    readf("%d\n", N);

    int[][int] ladders;

    foreach (i; 0 .. N) {
        int A, B;
        readf("%d %d\n", A, B);

        if (!(A in ladders)) ladders[A] = [];
        ladders[A] ~= B;

        if (!(B in ladders)) ladders[B] = [];
        ladders[B] ~= A;
    }

    int res;
    bool[int] seen;

    void f(int pos) {
        res = max(res, pos);
        seen[pos] = true;

        if (pos in ladders) {
            foreach (l; ladders[pos]) {
                if (l in seen) continue;
                f(l);
            }
        }
    }

    f(1);

    res.writeln;
}