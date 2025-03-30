import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    A[] -= 1;

    auto B = new int[][](N);
    foreach (i, a; A) {
        B[a] ~= i.to!int;
    }

    auto res = iota(1, N + 1).array;
    zip(B, res).sort!((a, b) => a[0][1] < b[0][1]);

    writefln("%(%d %)", res);
}
