import std;

void main() {
    int N;
    readfln("%d", N);

    int[] T = readln.chomp.split.to!(int[]);

    int[] R = iota(1, N + 1).array;

    auto G = zip(T, R).array;
    G.sort!((a, b) => a[0] < b[0]);

    string res = G[0 .. 3].map!(a => a[1].to!string).join(" ");
    res.writeln;
}
