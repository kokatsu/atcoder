import std;

void main() {
    int N, K;
    readfln("%d %d", N, K);

    int[] P = readln.chomp.split.to!(int[]);

    int res = P.filter!(p => p >= K).sum;
    res.writeln;
}
