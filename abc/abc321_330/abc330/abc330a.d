import std;

void main() {
    int N, L;
    readf("%d %d\n", N, L);

    auto A = readln.chomp.split.to!(int[]);

    auto res = A.filter!(a => a >= L).walkLength;
    res.writeln;
}
