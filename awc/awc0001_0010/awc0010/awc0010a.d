import std;

void main() {
    long N, M;
    readfln("%d %d", N, M);

    long[] A = readln.chomp.split.to!(long[]);

    string res = A.sum >= M ? "Yes" : "No";
    res.writeln;
}
