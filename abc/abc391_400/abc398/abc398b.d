import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    A.sort;

    auto G = A.group.array;

    G.sort!((a, b) => a[1] > b[1]);

    string res = G.length >= 2 && G[0][1] >= 3 && G[1][1] >= 2 ? "Yes" : "No";
    res.writeln;
}
