import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int res = A.fold!((a, e) => a * 2 + e);
    res.writeln;
}
