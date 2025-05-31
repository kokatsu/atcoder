import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    A.sort;

    auto G = A.group.array;

    string res = format("%d\n%(%d %)", G.length, G.map!(g => g[0]));
    res.writeln;
}
