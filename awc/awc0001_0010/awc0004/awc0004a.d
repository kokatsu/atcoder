import std;

void main() {
    int N, S, T;
    readfln("%d %d %d", N, S, T);

    int[] A = readln.chomp.split.to!(int[]);

    string res = A.sum <= (T - S) * 60 ? "Yes" : "No";
    res.writeln;
}
