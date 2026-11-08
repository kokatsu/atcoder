import std;

void main() {
    int N, P, B, K;
    readfln("%d %d %d %d", N, P, B, K);

    int[] C = readln.chomp.split.to!(int[]);

    int res = C.map!(c => c >= K ? (P + B) * c : P * c).sum;
    res.writeln;
}
