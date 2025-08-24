import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    int[] A = readln.chomp.split.to!(int[]);

    int[] B = A.filter!(a => a % K == 0)
        .map!(a => a / K)
        .array;

    string res = format("%(%d %)", B);
    res.writeln;
}
