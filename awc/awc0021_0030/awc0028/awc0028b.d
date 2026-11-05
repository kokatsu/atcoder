import std;

void main() {
    int N, L, R;
    readfln("%d %d %d", N, L, R);

    int[] T = readln.chomp.split.to!(int[]);

    uint res = T.map!(t => L <= t && t <= R)
        .group
        .filter!(g => g[0])
        .map!(g => g[1])
        .maxElement;
    res.writeln;
}
