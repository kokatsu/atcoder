import std;

void main() {
    int N;
    readf("%d\n", N);

    int res, mx;
    foreach (_; 0 .. N) {
        int p;
        readf("%d\n", p);

        res += p, mx = max(mx, p);
    }

    res -= mx / 2;

    res.writeln;
}