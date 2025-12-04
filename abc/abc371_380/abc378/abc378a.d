import std;

void main() {
    int[] A = readln.chomp.split.to!(int[]);

    A.sort;

    auto G = A.group.array;

    uint res = G.map!(g => g[1] / 2).sum;
    res.writeln;
}
