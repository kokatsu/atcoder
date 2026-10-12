import std;

void main() {
    int N, K;
    readfln("%d %d", N, K);

    int res;
    foreach (_; 0 .. N) {
        int[] A = readln.chomp.split.to!(int[]);

        res += A[1 .. $].count!(a => a >= K);
    }

    res.writeln;
}
