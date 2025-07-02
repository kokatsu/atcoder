import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto B = A.dup;
    B.sort;

    auto G = B.group.array;
    long M = G[$ - 1][0];

    auto C = new long[](M + 2);
    foreach (g; G) {
        C[g[0]] = g[0] * g[1];
    }

    foreach (i; 1 .. M + 2) {
        C[i] += C[i - 1];
    }

    string res = A.map!(a => to!string(C[M + 1] - C[a])).join(" ");
    res.writeln;
}
