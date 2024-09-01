import std;

void main() {
    int N;
    readf("%d\n", N);

    auto d = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d\n", d[i]);
    }

    d.sort;

    auto res = d.uniq.walkLength;
    res.writeln;
}