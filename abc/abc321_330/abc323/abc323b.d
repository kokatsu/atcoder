import std;

void main() {
    int N;
    readf("%d\n", N);

    auto C = new ulong[](N);
    foreach (i; 0 .. N) {
        string S;
        readf("%s\n", S);

        C[i] = S.count('o');
    }

    auto res = iota(1, N + 1).array;

    zip(C, res).sort!"a[0] == b[0] ? a[1] < b[1] : a[0] > b[0]";

    writefln("%(%s %)", res);
}
