import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto G = A.group.array;

    string res = G.any!(g => g[1] >= 3) ? "Yes" : "No";
    res.writeln;
}
