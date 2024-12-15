import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto H = readln.chomp.split.to!(long[]);

    H.sort;

    long res, L = max(0, N - K);
    foreach (i; 0 .. L)
        res += H[i];

    res.writeln;
}
