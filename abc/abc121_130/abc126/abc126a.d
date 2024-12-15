import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto S = readln.chomp.to!(dchar[]);

    --K;

    S[K] = std.uni.toLower(S[K]);

    S.writeln;
}
