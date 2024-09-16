import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d\n", A[i]);
    }

    A.sort;

    auto G = A.group;

    auto res = G.filter!(x => x[1] % 2 == 1).walkLength;
    res.writeln;
}