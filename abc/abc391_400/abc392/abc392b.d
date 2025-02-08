import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    auto B = new bool[](N + 1);
    foreach (a; A) {
        B[a] = true;
    }

    auto X = iota(1, N + 1).filter!(i => !B[i]).array;

    auto res = format("%d\n%(%d %)", X.length, X);
    res.writeln;
}
