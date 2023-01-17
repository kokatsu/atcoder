import std;

void main() {
    int N;
    readf("%d\n", N);

    int res = int.max;
    foreach (_; 0 .. N) {
        int T;
        readf("%d\n", T);

        res = min(res, T);
    }

    res.writeln;
}