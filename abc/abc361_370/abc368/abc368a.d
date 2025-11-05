import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    int[] A = readln.chomp.split.to!(int[]);

    string res = format("%(%d %) %(%d %)", A[N - K .. N], A[0 .. N - K]);
    res.writeln;
}
