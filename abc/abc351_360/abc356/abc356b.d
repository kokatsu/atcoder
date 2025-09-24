import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int[] A = readln.chomp.split.to!(int[]);

    int[] S = new int[](M);
    foreach (_; 0 .. N) {
        int[] X = readln.chomp.split.to!(int[]);
        S[] += X[];
    }

    string res = M.iota.all!(i => S[i] >= A[i]) ? "Yes" : "No";
    res.writeln;
}
