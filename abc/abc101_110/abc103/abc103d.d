import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto a = new int[](M), b = new int[](M);
    foreach (i; 0 .. M) {
        readf("%d %d\n", a[i], b[i]);
    }

    zip(a, b).sort!"a[1] < b[1]";

    int res, pos;
    foreach (i; 0 .. M) {
        if (a[i] < pos) continue;

        pos = b[i];
        ++res;
    }

    res.writeln;
}