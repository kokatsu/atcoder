import std;

void main() {
    int N, K;
    readfln("%d %d", N, K);

    int[] A = readln.chomp.split.to!(int[]);

    string res = format("%(%d %)", A[K - 1 .. $].stride(K));
    res.writeln;
}
