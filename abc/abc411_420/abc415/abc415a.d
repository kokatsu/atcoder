import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = readln.chomp.split.to!(int[]);

    int X;
    readf("%d\n", X);

    string res = A.canFind(X) ? "Yes" : "No";
    res.writeln;
}
