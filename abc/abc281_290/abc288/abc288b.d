import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto S = new string[](N);
    foreach (i; 0 .. N) {
        readf("%s\n", S[i]);
    }

    auto res = S[0 .. K];

    res.sort;

    writefln("%-(%s\n%)", res);
}
