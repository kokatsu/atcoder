import std;

void main() {
    int N, K;
    readfln("%d %d", N, K);

    int[] S = readln.chomp.split.to!(int[]);

    size_t res = S.count!(s => s >= K);
    res.writeln;
}
