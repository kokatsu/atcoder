import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    int L = A.sort.uniq.array.length.to!int;

    int res = min(N, L + M);
    res.writeln;
}
