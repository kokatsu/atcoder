import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto res = new int[](N);
    foreach (_; 0 .. M) {
        int a, b;
        readf("%d %d\n", a, b);

        ++res[a-1], ++res[b-1];
    }

    foreach (r; res) r.writeln;
}