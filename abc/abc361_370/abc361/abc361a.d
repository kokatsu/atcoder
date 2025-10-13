import std;

void main() {
    int N, K, X;
    readf("%d %d %d\n", N, K, X);

    int[] A = readln.chomp.split.to!(int[]);

    A.insertInPlace(K, X);

    string res = format("%(%d %)", A);
    res.writeln;
}
