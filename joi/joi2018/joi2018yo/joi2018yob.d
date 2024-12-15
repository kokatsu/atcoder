import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto G = A.group.array;

    uint res = G.length == 1 && G[0][0] == 0 ? 1 : G.filter!"a[0] == 1"
        .maxElement!"a[1]"[1] + 1;
    res.writeln;
}
