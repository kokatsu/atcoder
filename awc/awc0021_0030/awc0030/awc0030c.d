import std;

void main() {
    int N, K;
    readfln("%d %d", N, K);

    int[] S = readln.chomp.split.to!(int[]);

    size_t res = S.group.count!(g => g[0] == 1 && g[1] >= K);
    res.writeln;
}
