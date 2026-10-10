import std;

void main() {
    long N;
    readfln("%d", N);

    long[] A = readln.chomp.split.to!(long[]);

    string res = A.sum % N == 0 ? "Yes" : "No";
    res.writeln;
}
